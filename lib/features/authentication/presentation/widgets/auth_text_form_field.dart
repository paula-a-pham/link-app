import 'package:flutter/material.dart';

class AuthTextFormField extends StatelessWidget {
  final AutovalidateMode autovalidateMode;
  final TextEditingController controller;
  final String hintText;
  final IconData prefixIcon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final String? Function(String?) validator;
  const AuthTextFormField({
    super.key,
    required this.autovalidateMode,
    required this.controller,
    required this.hintText,
    required this.prefixIcon,
    this.suffixIcon,
    this.keyboardType,
    this.obscureText = false,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: autovalidateMode,
      controller: controller,
      decoration: InputDecoration(
        border: getFieldBorder(),
        disabledBorder: getFieldBorder(),
        enabledBorder: getFieldBorder(),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide.none,
        ),
        filled: true,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(
            width: 1.5,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide.none,
        ),
        hintText: hintText,
        prefixIcon: Icon(
          prefixIcon,
        ),
        suffixIcon: IconButton(
          onPressed: () {},
          icon: Icon(
            suffixIcon,
          ),
        ),
      ),
      keyboardType: keyboardType,
      obscureText: obscureText!,
      validator: validator,
    );
  }

  OutlineInputBorder getFieldBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: BorderSide.none,
    );
  }
}
