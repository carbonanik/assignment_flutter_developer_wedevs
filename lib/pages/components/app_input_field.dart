import 'package:assignment_flutter_developer_wedevs/core/colors.dart';
import 'package:flutter/material.dart';

class AppInputField extends StatelessWidget {
  final String hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Function()? onTap;
  final Function(String value)? onChanged;
  final TextEditingController? controller;
  final bool obscureText;
  final TextInputType? keyboardType;
  final FormFieldValidator<String>? validator;
  final bool readOnly;

  const AppInputField({
    required this.hintText,
    this.suffixIcon,
    this.prefixIcon,
    this.onTap,
    this.onChanged,
    this.controller,
    this.obscureText = false,
    this.keyboardType,
    this.validator,
    this.readOnly = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 6.0,
      shadowColor: shadowOneColor,
      borderRadius: BorderRadius.circular(14),
      child: TextFormField(
        onTap: onTap,
        onChanged: onChanged,
        controller: controller,
        keyboardType: keyboardType,
        canRequestFocus: onTap == null,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 18,
        ),
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          contentPadding: const EdgeInsets.all(21),
          hintStyle: const TextStyle(
            color: hintColor,
          ),
          suffixIcon: suffixIcon,
          suffixIconConstraints:
              const BoxConstraints(maxHeight: 24, minWidth: 64),
          prefixIcon: prefixIcon,
          prefixIconConstraints:
              const BoxConstraints(maxHeight: 24, minWidth: 64),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(14),
          ),
          filled: true,
          fillColor: Colors.white,
        ),
        validator: validator,
        readOnly: readOnly,
      ),
    );
  }
}
