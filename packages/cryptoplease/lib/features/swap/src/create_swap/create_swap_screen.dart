import 'package:decimal/decimal.dart';
import 'package:dfunc/dfunc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/accounts/bl/account.dart';
import '../../../../core/amount.dart';
import '../../../../core/balances/bl/balances_bloc.dart';
import '../../../../core/callback.dart';
import '../../../../core/tokens/token.dart';
import '../../../../di.dart';
import '../../../../l10n/device_locale.dart';
import '../../../../l10n/l10n.dart';
import '../../../../ui/amount_keypad/amount_keypad.dart';
import '../../../../ui/button.dart';
import '../../../../ui/content_padding.dart';
import '../../../../ui/number_formatter.dart';
import '../swap_operation.dart';
import '../swap_route.dart';
import '../swap_seed.dart';
import 'available_balance.dart';
import 'components/display_header.dart';
import 'components/equivalent_header.dart';
import 'components/route_duration_wrapper.dart';
import 'components/slippage_info.dart';
import 'components/swap_exception_dialog.dart';
import 'components/swap_fee.dart';
import 'components/token_dropdown.dart';
import 'create_swap_bloc.dart';

class CreateSwapScreen extends StatefulWidget {
  const CreateSwapScreen({
    super.key,
    required this.onRouteReady,
    required this.inputToken,
    required this.outputToken,
    required this.operation,
  });

  final Callback1<SwapRoute> onRouteReady;
  final Token inputToken;
  final Token outputToken;
  final SwapOperation operation;

  @override
  State<CreateSwapScreen> createState() => _CreateSwapScreenState();
}

class _CreateSwapScreenState extends State<CreateSwapScreen> {
  final _amountController = TextEditingController();
  late final CreateSwapBloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = sl<CreateSwapBloc>(
      param1: SwapSetup(
        input: widget.inputToken,
        output: widget.outputToken,
        initialEditingMode: widget.operation.toInitialEditingMode(),
        userAccount: context.read<MyAccount>().wallet.publicKey,
      ),
      param2: context.read<BalancesBloc>().state.balances,
    );
    _amountController.addListener(_updateValue);
  }

  void _onSubmit() {
    const event = CreateSwapEvent.submitted();
    _bloc.add(event);
  }

  void _onSlippageChanged(Slippage value) {
    final event = CreateSwapEvent.slippageUpdated(value);
    _bloc.add(event);
  }

  void _onEditingModeToggled() {
    const event = CreateSwapEvent.editingModeToggled();
    _bloc.add(event);
  }

  void _onAmountChanged(Decimal value) {
    final event = CreateSwapEvent.amountUpdated(value);
    _bloc.add(event);
  }

  void _onRouteExpired() {
    const event = CreateSwapEvent.routeInvalidated();
    _bloc.add(event);
  }

  void _updateValue() {
    final locale = DeviceLocale.localeOf(context);
    final amount = _amountController.text.toDecimalOrZero(locale);
    _onAmountChanged(amount);
  }

  void _onSwapException(CreateSwapException e) => showSwapExceptionDialog(
        context,
        context.l10n.swapErrorTitle,
        e,
      );

  @override
  void dispose() {
    _amountController.removeListener(_updateValue);
    _bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) =>
      BlocConsumer<CreateSwapBloc, CreateSwapState>(
        bloc: _bloc,
        listenWhen: (prev, cur) => prev.flowState != cur.flowState,
        listener: (context, state) => state.flowState.whenOrNull(
          failure: _onSwapException,
          success: widget.onRouteReady,
        ),
        builder: (context, state) => SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ValueListenableBuilder<TextEditingValue>(
                valueListenable: _amountController,
                builder: (context, value, __) => DisplayHeader(
                  displayAmount: value.text,
                ),
              ),
              EquivalentHeader(
                inputAmount: state.inputAmount,
                outputAmount: state.outputAmount,
                isLoadingRoute: state.flowState.isProcessing(),
              ),
              SwapFee(amount: state.fee),
              TokenDropDown(
                current: state.requestAmount.token,
                onTokenChanged: (_) => _onEditingModeToggled(),
                availableTokens: [
                  state.inputAmount.token,
                  state.outputAmount.token,
                ],
              ),
              AvailableBalance(
                maxAmountAvailable: _bloc.calculateMaxAmount(),
              ),
              SlippageInfo(
                slippage: state.slippage,
                onSlippageChanged: _onSlippageChanged,
              ),
              Flexible(
                child: LayoutBuilder(
                  builder: (context, constraints) => AmountKeypad(
                    height: constraints.maxHeight,
                    width: constraints.maxWidth,
                    controller: _amountController,
                    maxDecimals: state.requestAmount.token.decimals,
                  ),
                ),
              ),
              RouteDurationWrapper(
                end: state.expiresAt,
                onTimeout: _onRouteExpired,
                builder: (context, remaining) => _Button(
                  countdown: remaining,
                  onSubmit: _onSubmit,
                ),
              ),
            ],
          ),
        ),
      );
}

class _Button extends StatelessWidget {
  const _Button({
    Key? key,
    required this.countdown,
    required this.onSubmit,
  }) : super(key: key);

  final Duration? countdown;
  final VoidCallback onSubmit;

  @override
  Widget build(BuildContext context) {
    final title = context.l10n.pressAndHoldToSubmit;
    final label = countdown
        .maybeMap((d) => '$title (${d.inSeconds}s)')
        .ifNull(() => title);

    return CpContentPadding(
      child: CpButton(
        text: label,
        mechanics: CpButtonMechanics.pressAndHold,
        width: double.infinity,
        size: CpButtonSize.big,
        onPressed: countdown != null ? onSubmit : null,
      ),
    );
  }
}

extension on SwapOperation {
  SwapEditingMode toInitialEditingMode() {
    switch (this) {
      case SwapOperation.buy:
        return const SwapEditingMode.output();
      case SwapOperation.sell:
        return const SwapEditingMode.input();
    }
  }
}
