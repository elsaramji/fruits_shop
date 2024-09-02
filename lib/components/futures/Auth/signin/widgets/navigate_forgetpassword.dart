// components/future's/Auth/signin/widgets/navigate_forgetpassword.dart
import 'package:flutter/material.dart';
import 'package:fruits_shop/core/styles/color_style.dart';
import 'package:fruits_shop/core/styles/font_style.dart';

class NavigateForgetpassword extends StatelessWidget {
  const NavigateForgetpassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          "نسيت كلمة المرور؟",
          style: TextsStyle.semibold13.copyWith(color: AppColors.green1600),
        ),
      ],
    );
  }
}
