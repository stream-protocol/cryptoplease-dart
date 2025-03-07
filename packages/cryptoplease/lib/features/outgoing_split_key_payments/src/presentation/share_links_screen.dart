import 'package:flutter/material.dart';
import 'package:share/share.dart';

import '../../../../core/amount.dart';
import '../../../../core/presentation/format_amount.dart';
import '../../../../core/presentation/utils.dart';
import '../../../../l10n/l10n.dart';
import '../../../../ui/app_bar.dart';
import '../../../../ui/button.dart';
import '../../../../ui/colors.dart';
import '../../../../ui/content_padding.dart';
import '../../../../ui/share_message/share_message_bubble.dart';
import '../../../../ui/share_message/share_message_header.dart';
import '../../../../ui/theme.dart';
import '../bl/outgoing_split_key_payment.dart';

class ShareLinksScreen extends StatelessWidget {
  const ShareLinksScreen({
    Key? key,
    required this.amount,
    required this.status,
  }) : super(key: key);

  final CryptoAmount amount;
  final OSKPStatusLinksReady status;

  @override
  Widget build(BuildContext context) {
    final formattedAmount = amount.formatWithFiat(context);

    final message = context.l10n.shareText(
      formattedAmount,
      status.link1,
      status.link2,
    );

    final messageBubble = ShareMessageBubble(
      textSpan: TextSpan(
        children: [
          ShareMessageHeader(
            intro: context.l10n.shareIntroFt,
            amount: formattedAmount,
          ),
          const WidgetSpan(child: _Instructions()),
          WidgetSpan(
            child: _Links(firstLink: status.link1, secondLink: status.link2),
          ),
        ],
      ),
    );

    final title = Text(
      context.l10n.yourLinkIsReady.toUpperCase(),
      style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
    );

    final subTitle = Text(
      context.l10n.linkSubtitle,
      textAlign: TextAlign.center,
      style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
    );

    final shareButton = CpButton(
      text: context.l10n.shareLink,
      width: double.infinity,
      size: CpButtonSize.big,
      onPressed: () => Share.share(message),
    );

    return CpTheme.dark(
      child: Scaffold(
        appBar: CpAppBar(title: title),
        body: CpContentPadding(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: subTitle,
              ),
              Flexible(child: messageBubble),
              const SizedBox(height: 24),
              shareButton,
            ],
          ),
        ),
      ),
    );
  }
}

class _Links extends StatelessWidget {
  const _Links({
    Key? key,
    required this.firstLink,
    required this.secondLink,
  }) : super(key: key);

  final Uri firstLink;
  final Uri secondLink;

  @override
  Widget build(BuildContext context) => Text.rich(
        TextSpan(
          children: [
            TextSpan(text: context.l10n.shareStep1),
            _newLine,
            TextSpan(
              text: firstLink.toString().withZeroWidthSpaces(),
              style: _linkStyle,
            ),
            _newLine,
            TextSpan(text: context.l10n.shareStep2),
            _newLine,
            TextSpan(
              text: secondLink.toString().withZeroWidthSpaces(),
              style: _linkStyle,
            ),
          ],
          style: _baseStyle,
        ),
      );
}

class _Instructions extends StatelessWidget {
  const _Instructions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Text.rich(
        TextSpan(
          children: [
            _newLine,
            TextSpan(text: context.l10n.shareInstructions),
            _newLine,
          ],
          style: _baseStyle,
        ),
      );
}

const _newLine = TextSpan(text: '\n\n');

final _linkStyle = _baseStyle.merge(
  const TextStyle(
    fontWeight: FontWeight.w600,
    color: CpColors.yellowColor,
  ),
);

const _baseStyle = TextStyle(fontSize: 18);
