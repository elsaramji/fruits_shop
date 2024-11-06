// core/helper/on_Generate.dart

import 'package:flutter/material.dart';
import 'package:fruits_shop/components/Home/views/home_view.dart';
import 'package:fruits_shop/components/factory/factory_tast.dart';
import 'package:fruits_shop/components/futures/Auth/forgetpassword/view/forget_password_viwe.dart';
import 'package:fruits_shop/components/futures/Auth/signin/views/Signin.dart';
import 'package:fruits_shop/components/futures/Auth/signup/view/signup_view_builder.dart';
import 'package:fruits_shop/components/futures/onboarding/view/view_main.dart';
import 'package:fruits_shop/components/futures/splash/view/splash.dart';

Route<dynamic>? ongenerate(RouteSettings setting) {
  switch (setting.name) {
    case Splash.route:
      return MaterialPageRoute(builder: (context) => const Splash());
    case MainBoards.route:
      return MaterialPageRoute(builder: (context) => const MainBoards());

    case Signin.route:
      return MaterialPageRoute(builder: (context) => const Signin());

    case Signup.route:
      return MaterialPageRoute(builder: (context) => const Signup());

    case ForgetPasswordViwe.routeName:
      return MaterialPageRoute(builder: (context) => ForgetPasswordViwe());

    case HomeView.id:
      return MaterialPageRoute(builder: (context) => const HomeView());
    case Factory.route:
      return MaterialPageRoute(builder: (context) => Factory());
    default:
      return null;
  }
}
