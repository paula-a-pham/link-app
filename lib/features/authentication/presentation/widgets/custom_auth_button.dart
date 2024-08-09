import 'package:flutter/material.dart';

class CustomAuthButton extends StatelessWidget {
  final VoidCallback onTap;
  final Color color;
  final IconData icon;
  final String text;
  const CustomAuthButton({
    super.key,
    required this.onTap,
    required this.color,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: color,
        ),
        height: 50.0,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              color: Colors.white,
              size: 25.0,
            ),
            const SizedBox(
              width: 15.0,
            ),
            Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
