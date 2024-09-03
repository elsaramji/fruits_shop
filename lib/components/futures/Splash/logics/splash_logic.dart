// components/futures/splash/logics/splash_logic.dart

import 'package:flutter/material.dart';
import '../../../../core/constant/keys.dart';
import '../../../../service/database/presence.dart';
import '../../Auth/signin/views/Signin.dart';
import '../../onboarding/view/view_main.dart';

class SplashLogic {
  static void goToApp(context) async {
    await Future.delayed(const Duration(seconds: 3));
    if (Preferences.getBool(Keys.isviewedOnBoarding)) {
      Navigator.popAndPushNamed(context, Signin.route);
    } else {
      Navigator.popAndPushNamed(context, MainBoards.route);
    }
  }
}
