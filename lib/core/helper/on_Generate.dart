// core/helper/on_Generate.dart

import 'package:flutter/material.dart';
import 'package:fruits_shop/views/Auth/views/create_new_account.dart';
import 'package:fruits_shop/views/Auth/views/forgetpassword.dart';
import 'package:fruits_shop/views/Auth/views/signin.dart';
import 'package:fruits_shop/views/Futures/Onboarding/view/onBoardingMain.dart';
import 'package:fruits_shop/views/Futures/Splash/view/splash.dart';

Route<dynamic> ongenerate(RouteSettings setting) {
  switch (setting.name) {
    case Splash.route:
      return MaterialPageRoute(builder: (context) => const Splash());
    case OnBoarding.route:
      return MaterialPageRoute(builder: (context) => const OnBoarding());
    case SigninView.route:
      return MaterialPageRoute(builder: (context) => const SigninView());
    case Forgetpassword.route:
      return MaterialPageRoute(builder: (context) => Forgetpassword());
    case CreateNewAccount.route:
      return MaterialPageRoute(builder: (context) => CreateNewAccount());
    default:
      return MaterialPageRoute(builder: (context) => const OnBoarding());
  }
}
