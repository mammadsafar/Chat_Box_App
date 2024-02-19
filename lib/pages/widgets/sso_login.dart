import 'package:flutter/material.dart';

class LoginWithWidget extends StatelessWidget {
  final String icon;
  final VoidCallback? onPressed;
  final Color borderColor;
  const LoginWithWidget({
    super.key,
    required this.icon,
    required this.borderColor,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          // color: const Color(0xFF3A3A3A),
          border: Border.all(
            color: borderColor,
          ),
        ),
        child: Center(
          child: Image.asset(icon),
        ),
      ),
    );
  }
}
