// core/custom/Style/custom_buttons_style.dart
import 'package:flutter/material.dart';
import 'package:fruits_shop/core/styles/color_style.dart';

import 'package:fruits_shop/core/styles/font_style.dart';

class CustomButtonsStyle {
  static final ButtonStyle primeryButtonstyle = ElevatedButton.styleFrom(
      textStyle: TextsStyle.bold16.copyWith(color: AppColors.primaryWhite),
      backgroundColor: AppColors.primaryColor,
      overlayColor: AppColors.grayscale300,
      foregroundColor: AppColors.grayscale300,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ));
  static final ButtonStyle socailAuthButtonstyle = ElevatedButton.styleFrom(
      textStyle: TextStyle(color: Color(0xff0C0D0D)),
      backgroundColor: AppColors.primaryWhite,
      overlayColor: AppColors.primaryColor,
      foregroundColor: AppColors.primaryColor,
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Color(0xffDDDFDF)),
        borderRadius: BorderRadius.circular(10),
      ));
}
