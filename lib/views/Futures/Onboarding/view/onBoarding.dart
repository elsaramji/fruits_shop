// views/Futures/Onboarding/view/onBoarding.dart
import 'package:flutter/material.dart';
import 'package:fruits_shop/views/Futures/Onboarding/widgets/page_view_onboarding.dart';

class OnBoarding extends StatelessWidget {
  static const String route = "/onBoarding";
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageViewBoarding();
  }
}
