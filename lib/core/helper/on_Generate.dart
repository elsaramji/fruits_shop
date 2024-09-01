// core/helper/on_Generate.dart

import 'package:flutter/material.dart';

import '../../components/futures/Auth/views/login_view.dart';
import '../../components/futures/Onboarding/view/onBoardingMain.dart';
import '../../components/futures/Splash/view/splash.dart';

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
