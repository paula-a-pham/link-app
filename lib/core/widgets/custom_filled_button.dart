import 'package:flutter/material.dart';

class CustomFilledButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  const CustomFilledButton({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      style: FilledButton.styleFrom(
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
