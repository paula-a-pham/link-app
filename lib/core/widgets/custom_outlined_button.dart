import 'package:flutter/material.dart';

class CustomOutlinedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  const CustomOutlinedButton({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        fixedSize: const Size.fromHeight(45.0),
      ),
      child: Text(
        text,
      ),
    );
  }
}
