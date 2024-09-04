// core/helper/on_Generate.dart

import 'package:flutter/material.dart';
import 'package:fruits_shop/components/futures/Auth/signin/views/Signin.dart';
import 'package:fruits_shop/components/futures/Auth/signup/view/signup.dart';
import 'package:fruits_shop/components/futures/exit/view/exit_dialog.dart';
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

    default:
      return null;
  }
}
