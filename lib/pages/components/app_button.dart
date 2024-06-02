import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String title;
  final void Function() onPressed;
  final Widget? icon;
  final Color? color;
  final Color? textColor;
  final bool enabled;
  final Color borderColor;

  const AppButton({
    required this.title,
    required this.onPressed,
    this.icon,
    this.color,
    this.textColor,
    this.enabled = true,
    this.borderColor = Colors.transparent,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: MaterialButton(
            padding: const EdgeInsets.symmetric(vertical: 10),
            onPressed: enabled ? onPressed : null,
            color: color ?? Theme.of(context).colorScheme.primary,
            disabledColor: Colors.grey,
            disabledTextColor: Colors.white,
            elevation: 0,
            height: 60,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
              side: BorderSide(color: borderColor),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (icon != null) icon!,
                if (icon != null) const SizedBox(width: 10),
                Text(
                  title,
                  style: TextStyle(
                    color: textColor ?? (enabled ? Colors.white : Colors.grey),
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
