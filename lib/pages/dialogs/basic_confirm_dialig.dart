import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/app_button.dart';

class BasicConfirmDialog extends StatelessWidget {
  final String title;
  final String confirmText;
  final String cancelText;
  final Function()? onConfirm;

  const BasicConfirmDialog({
    required this.title,
    this.confirmText = "Confirm",
    this.cancelText = "Cancel",
    this.onConfirm,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.info,
              color: Colors.blueAccent,
              size: 100,
            ),
            const SizedBox(height: 30),
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                Expanded(
                  child: AppButton(
                    title: cancelText,
                    onPressed: () {
                      Navigator.of(context).pop(false);
                    },
                    textColor: Theme.of(context).colorScheme.primary,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: AppButton(
                    title: confirmText,
                    onPressed: () {
                      if (onConfirm != null) {
                        onConfirm!();
                      }
                      Navigator.of(context).pop(true);
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
