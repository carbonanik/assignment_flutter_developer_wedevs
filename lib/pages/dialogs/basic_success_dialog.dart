import 'package:assignment_flutter_developer_wedevs/utils/navigation.dart';
import 'package:flutter/material.dart';

import '../components/app_button.dart';

class BasicSuccessDialog extends StatelessWidget {
  final String title;

  const BasicSuccessDialog({
    required this.title,
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
              Icons.check_circle,
              color: Colors.green,
              size: 100,
            ),
            const SizedBox(height: 30),
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            AppButton(
              onPressed: () {
                context.pop();
              },
              title: "OK",
            ),
          ],
        ),
      ),
    );
  }
}
