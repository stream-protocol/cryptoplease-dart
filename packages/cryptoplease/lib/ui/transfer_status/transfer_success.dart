import 'package:flutter/material.dart';

import '../../l10n/l10n.dart';
import '../button.dart';
import '../status_screen.dart';
import '../status_widget.dart';

class TransferSuccess extends StatelessWidget {
  const TransferSuccess({
    super.key,
    required this.onOkPressed,
  });

  final VoidCallback onOkPressed;

  @override
  Widget build(BuildContext context) => StatusScreen(
        title: context.l10n.splitKeyTransferTitle,
        statusTitle: Text(context.l10n.splitKeySuccessMessage1),
        statusContent: Text(context.l10n.splitKeySuccessMessage2),
        statusType: CpStatusType.success,
        content: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const SizedBox(height: 160),
              CpButton(
                size: CpButtonSize.big,
                width: double.infinity,
                text: context.l10n.ok,
                onPressed: onOkPressed,
              )
            ],
          ),
        ),
      );
}
