// views/Futures/Auth/widgets/social_auth_buttons.dart

import 'package:flutter/material.dart';
import 'package:fruits_shop/const/initial_values.dart';
import 'package:fruits_shop/core/assets/assets_image.dart';
import 'package:fruits_shop/core/multiple/widgets/custom_social_button.dart';

class SocialAuthentication extends StatelessWidget {
  const SocialAuthentication({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomSocialButton(
          title: "تسجيل بواسطة جوجل",
          iconphat: Assets.assetsImagesGoogle,
          onTouch: () {},
        ),
        SizedBox(
          height: InitialValues.initial_tow,
        ),
        CustomSocialButton(
          title: "تسجيل بواسطة أبل",
          iconphat: Assets.assetsImagesApple,
          onTouch: () {},
        ),
        SizedBox(
          height: InitialValues.initial_tow,
        ),
        CustomSocialButton(
          title: "تسجيل بواسطة فيسبوك",
          iconphat: Assets.assetsImagesFacebook,
          onTouch: () {},
        ),
      ],
    );
  }
}
