// core/helper/on_Generate.dart

import 'package:flutter/material.dart';
import 'package:fruits_shop/components/futures/Auth/signin/views/login_view.dart';
import 'package:fruits_shop/components/futures/onboarding/view/onBoardingMain.dart';
import 'package:fruits_shop/components/futures/splash/view/splash.dart';


Route<dynamic> ongenerate(RouteSettings setting) {
  switch (setting.name) {
    case Splash.route:
      return MaterialPageRoute(builder: (context) => const Splash());
    case OnBoarding.route:
      return MaterialPageRoute(builder: (context) => const OnBoarding());

    case LoginView.route:
      return MaterialPageRoute(builder: (context) => const LoginView());

    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
