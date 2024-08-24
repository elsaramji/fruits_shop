// views/Futures/Onboarding/view/onBoardingone.dart

import 'package:flutter/material.dart';
import 'package:fruits_shop/core/assets/assets_image.dart';
import 'package:fruits_shop/views/Auth/views/signin.dart';
import 'package:fruits_shop/views/Futures/Onboarding/widgets/custom_view_pages.dart';

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
                  Text("مرحبًا بك في"),
                  Text(
                    "HUB",
                  ),
                  Text("Fruit")
                ],
              )),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, SigninView.route);
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 21, top: 21),
              child: Text("تخط"),
            ),
          ),
        ],
      ),
    );
  }
}
