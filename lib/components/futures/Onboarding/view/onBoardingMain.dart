// components/futures/Onboarding/view/onBoardingMain.dart
import 'package:flutter/material.dart';

import '../widgets/page_view_onboarding.dart';

class OnBoarding extends StatelessWidget {
  static const String route = "/onBoarding";
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: const PageViewBoarding());
  }
}
