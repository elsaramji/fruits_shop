// components/futures/Auth/signin/logics/logics_singin.dart

import 'package:flutter/material.dart';

import '../../signup/view/signup.dart';

class SigninLogics {
  static void gotoSignup(BuildContext context) {
    Navigator.pushNamed(context, Signup.route);
  }
}
