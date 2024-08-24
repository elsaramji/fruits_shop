// core/multiple/Style/custom_buttons_style.dart
import 'package:flutter/material.dart';
import 'package:fruits_shop/const/color.dart';

class CustomButtonsStyle {
  static final ButtonStyle dufletButtonstyle = ElevatedButton.styleFrom(
      textStyle: TextStyle(color: Colors.white),
      backgroundColor: ColorConst.primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ));
  static final ButtonStyle apiAuthButtonstyle = ElevatedButton.styleFrom(
      textStyle: TextStyle(color: Color(0xff0C0D0D)),
      backgroundColor: Color(0xffFFFFFF),
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Color(0xffDDDFDF)),
        borderRadius: BorderRadius.circular(10),
      ));
}
