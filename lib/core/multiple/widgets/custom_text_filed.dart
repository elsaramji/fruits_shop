// core/multiple/widgets/custom_text_filed.dart
import 'package:flutter/material.dart';

import 'package:fruits_shop/core/styles/color_style.dart';
import 'package:fruits_shop/core/styles/font_style.dart';

class CustomTextformField extends StatelessWidget {
  final String hinttext;
  final TextEditingController controller;
  final TextInputType keybordetepy;
  final bool obscuretext;
  final Widget? suffixicon;
  const CustomTextformField({
    super.key,
    required this.keybordetepy,
    required this.hinttext,
    required this.controller,
    this.obscuretext = false,
    this.suffixicon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: TextsStyle.semibold13,
      keyboardType: keybordetepy,
      obscureText: obscuretext,
      decoration: InputDecoration(
        hintText: hinttext,
        suffixIcon: suffixicon,
        hintStyle:
            TextsStyle.semibold13.copyWith(color: AppColors.grayscale400),
        filled: true,
        fillColor: Color(0xFFF9FAFA),
        border: TextfildeBorders.normallyborder(),
        enabledBorder: TextfildeBorders.normallyborder(),
        focusedBorder: TextfildeBorders.normallyborder(),
        errorBorder: TextfildeBorders.errorborder(),
        focusedErrorBorder: TextfildeBorders.errorborder(),
      ),
    );
  }
}

class TextfildeBorders {
  static OutlineInputBorder normallyborder() {
    return const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(4)),
      borderSide: BorderSide(color: Color(0xFFE6E9E9)),
    );
  }

  static OutlineInputBorder errorborder() {
    return const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(4)),
      borderSide: BorderSide(color: Colors.red),
    );
  }
}
