// views/Futures/Onboarding/widgets/page_view_onboarding.dart
import 'package:flutter/material.dart';
import 'package:fruits_shop/views/Futures/Onboarding/view/onBoardingone.dart';
import 'package:fruits_shop/views/Futures/Onboarding/view/onBoardingtow.dart';

class PageViewBoarding extends StatelessWidget {
  const PageViewBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.horizontal,
        children: [Onboardingone(), Onboardingtow()],
      ),
    );
  }
}
