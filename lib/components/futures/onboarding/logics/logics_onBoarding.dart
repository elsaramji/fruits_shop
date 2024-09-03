// components/futures/onboarding/logics/logics_onBoarding.dart
import 'package:flutter/material.dart';

import '../../../../core/constant/keys.dart';
import '../../../../service/database/presence.dart';
import '../../Auth/signin/views/Signin.dart';

class LogicsOnBoarding {
  static void startnow(BuildContext context) {
    Preferences.setBool(Keys.isviewedOnBoarding, true);
    Navigator.pushReplacementNamed(context, Signin.route);
  }
}
