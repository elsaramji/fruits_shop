// components/futures/Auth/widgets/navigate_create_Account.dart
import 'package:flutter/material.dart';

import '../../../../core/styles/color_style.dart';
import '../../../../core/styles/font_style.dart';
class NavigateCreateAccount extends StatelessWidget {
  const NavigateCreateAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text.rich(TextSpan(children: [
          TextSpan(
              text: "ليس لديك حساب ؟ ",
              style: TextsStyle.semibold16
                  .copyWith(color: AppColors.grayscale400)),
          TextSpan(
              text: "انشاء حساب",
              style:
                  TextsStyle.semibold16.copyWith(color: AppColors.green1500)),
        ])),
      ],
    );
  }
}