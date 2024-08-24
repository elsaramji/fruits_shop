// core/multiple/Style/custom_buttons_style.dart
import 'package:flutter/material.dart';
import 'package:fruits_shop/const/color.dart';
import 'package:fruits_shop/const/initial_values.dart';

class CustomButtonsStyle {
  static final ButtonStyle dufletButtonstyle = ElevatedButton.styleFrom(
      textStyle: TextStyle(color: Colors.white),
      backgroundColor: ColorConst.primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(InitialValues.initial_tow),
      ));
  static final ButtonStyle apiAuthButtonstyle = ElevatedButton.styleFrom(
      textStyle: TextStyle(color: Color(0xff0C0D0D)),
      backgroundColor: ColorConst.primaryWhite,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Color(0xffDDDFDF)),
        borderRadius: BorderRadius.circular(10),
      ));
}
