// components/future's/onboarding/view/onBoardingtow.dart
import 'package:flutter/material.dart';
import 'package:fruits_shop/core/assets/assets_image.dart';
import 'package:fruits_shop/core/styles/color_style.dart';
import 'package:fruits_shop/core/styles/font_style.dart';

import '../widgets/custom_view_pages.dart';

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
              style: TextsStyle.bold23.copyWith(color: AppColors.grayscale950),
              textAlign: TextAlign.center,
            )));
  }
}
