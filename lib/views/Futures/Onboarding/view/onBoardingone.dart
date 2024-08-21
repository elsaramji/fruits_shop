// views/Futures/Onboarding/view/onBoardingone.dart

import 'package:flutter/material.dart';
import 'package:fruits_shop/core/assets/assets_image.dart';
import 'package:fruits_shop/views/Futures/Onboarding/widgets/custom_view_pages.dart';

class Onboardingone extends StatelessWidget {
  const Onboardingone({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 21),
            child: Text("تخط"),
          ),
          CustomViewPages(
              subtitel: "subtitel",
              bacgroundpath: Assets.assetsImagesBackgroundonboardingone,
              imagepath: Assets.assetsImagesFruitsonbording,
              title: Row(
                children: [Text("titel"), Text("Titel logo")],
              ))
        ],
      ),
    );
  }
}
