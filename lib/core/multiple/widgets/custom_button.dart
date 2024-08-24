// core/multiple/widgets/custom_button.dart

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Widget? child;
  final VoidCallback? onPressed;
  final ButtonStyle style;
  const CustomButton(
      {super.key, this.child, this.onPressed, required this.style});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: child,
      style: style,
    );
  }
}


/**
 * ElevatedButton.styleFrom(
  
 * 
 * 
 * Text(
          "تسجيل الدخول",
          style: TextStyle(color: Colors.white),
        ),
 */