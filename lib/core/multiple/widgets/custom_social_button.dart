// core/multiple/widgets/custom_social_button.dart
import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:fruits_shop/core/multiple/Style/custom_buttons_style.dart';

import 'package:fruits_shop/core/styles/color_style.dart';
import 'package:fruits_shop/core/styles/font_style.dart';

class CustomSocialButton extends StatelessWidget {
  final String title, iconphat;
  final void Function()? onTouch;
  const CustomSocialButton({
    super.key,
    required this.title,
    required this.iconphat,
    this.onTouch,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: CustomButtonsStyle.socailAuthButtonstyle,
        onPressed: onTouch,
        child: SizedBox(
          height: 54,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(iconphat),
              Spacer(),
              Text(
                title,
                style: TextsStyle.semibold13
                    .copyWith(color: AppColors.grayscale900),
              ),
              Spacer(),
            ],
          ),
        ));
  }
}
