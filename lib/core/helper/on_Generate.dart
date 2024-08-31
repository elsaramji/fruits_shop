// core/helper/on_Generate.dart

import 'package:flutter/material.dart';

import 'package:fruits_shop/views/Futures/Onboarding/view/onBoardingMain.dart';
import 'package:fruits_shop/views/Futures/Splash/view/splash.dart';

Route<dynamic> ongenerate(RouteSettings setting) {
  switch (setting.name) {
    case Splash.route:
      return MaterialPageRoute(builder: (context) => const Splash());
    case OnBoarding.route:
      return MaterialPageRoute(builder: (context) => const OnBoarding());

    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
