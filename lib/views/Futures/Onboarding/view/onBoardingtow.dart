// views/Futures/Onboarding/view/onBoardingtow.dart
import 'package:flutter/material.dart';
import 'package:fruits_shop/core/assets/assets_image.dart';
import 'package:fruits_shop/core/multiple/Style/custom_buttons_style.dart';
import 'package:fruits_shop/core/multiple/widgets/custom_button.dart';
import 'package:fruits_shop/views/Futures/Onboarding/widgets/custom_view_pages.dart';

class Onboardingtow extends StatelessWidget {
  const Onboardingtow({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: CustomViewPages(
            subtitel:
                "نقدم لك افضل الفواكه المختارة بعناية . اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية",
            bacgroundpath: Assets.assetsImagesBackgroundonboardingtow,
            imagepath: Assets.assetsImagesPineappleonbording,
            title: Text(
              "ابحث وتسوق",
              textAlign: TextAlign.center,
            )));
  }
}
