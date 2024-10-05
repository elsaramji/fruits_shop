// components/futures/Auth/signin/widgets/social_auth_buttons.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_shop/core/assets/assets_image.dart';
import 'package:fruits_shop/service/state_management/sginin_cubit/siginin_cubit_cubit.dart';

import '../../../../../core/custom/widgets/custom_social_button.dart';

class SocialButtonSection extends StatelessWidget {
  const SocialButtonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16),
        CustomSocialButton(
          title: "تسجيل بواسطة جوجل",
          iconphat: Assets.assetsImagesGoogle,
          onTouch: () {
            context.read<SigninCubit>().signinWithGoogle();
          },
        ),
        const SizedBox(height: 16),
        CustomSocialButton(
          title: "تسجيل بواسطة أبل",
          iconphat: Assets.assetsImagesApple,
          onTouch: () {
            context.read<SigninCubit>().signinWithApple();
          },
        ),
        SizedBox(height: 16),
        CustomSocialButton(
          title: "تسجيل بواسطة فيسبوك",
          iconphat: Assets.assetsImagesFacebook,
          onTouch: () {
            context.read<SigninCubit>().signinWithFacebook();
          },
        ),
      ],
    );
  }
}
