// components/future's/onboarding/view/onBoardingone.dart

import 'package:flutter/material.dart';
import 'package:fruits_shop/core/assets/assets_image.dart';
import 'package:fruits_shop/core/helper/presence.dart';
import 'package:fruits_shop/core/styles/color_style.dart';
import 'package:fruits_shop/core/styles/font_style.dart';

import '../../../../core/constant/keys.dart';
import '../../Auth/signin/views/login_view.dart';

import '../widgets/custom_view_pages.dart';


class Onboardingone extends StatelessWidget {
  const Onboardingone({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          CustomViewPages(
              subtitel:
                  "اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.",
              bacgroundpath: Assets.assetsImagesBackgroundonboardingone,
              imagepath: Assets.assetsImagesFruitsonbording,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "مرحبًا بك في",
                    style: TextsStyle.bold23
                        .copyWith(color: AppColors.grayscale950),
                  ),
                  Text(
                    "HUB",
                    style:
                        TextsStyle.bold23.copyWith(color: AppColors.orange500),
                  ),
                  Text(
                    "Fruit",
                    style:
                        TextsStyle.bold23.copyWith(color: AppColors.green1500),
                  )
                ],
              )),
          GestureDetector(
            onTap: () {
              Preferences.setBool(Keys.isviewedOnBoarding, true);
              Navigator.pushReplacementNamed(context, LoginView.route);
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 21, top: 21),
              child: Text(
                "تخط",
                style: TextsStyle.regular13
                    .copyWith(color: AppColors.grayscale400),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
