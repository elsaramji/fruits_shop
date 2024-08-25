// core/multiple/Style/custom_buttons_style.dart
import 'package:flutter/material.dart';
import 'package:fruits_shop/const/color.dart';
import 'package:fruits_shop/const/initial_values.dart';

class CustomButtonsStyle {
  static final ButtonStyle dufletButtonstyle = ElevatedButton.styleFrom(
      textStyle: TextStyle(color: Colors.white),
      backgroundColor: ColorConst.primaryColor,
      overlayColor: ColorConst.primaryGray,
      foregroundColor: ColorConst.primaryGray,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(InitialValues.initial_tow),
      ));
  static final ButtonStyle apiAuthButtonstyle = ElevatedButton.styleFrom(
      textStyle: TextStyle(color: Color(0xff0C0D0D)),
      backgroundColor: ColorConst.primaryWhite,
      overlayColor: ColorConst.primaryColor,
      foregroundColor: ColorConst.primaryColor,
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Color(0xffDDDFDF)),
        borderRadius: BorderRadius.circular(10),
      ));
}
