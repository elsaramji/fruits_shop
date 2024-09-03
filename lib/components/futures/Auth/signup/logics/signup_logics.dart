import 'package:flutter/material.dart';
import 'package:fruits_shop/components/futures/Auth/signin/views/Signin.dart';

class SignupLogics {
   static void gotoSignin(BuildContext context) {
     Navigator.popAndPushNamed(context, Signin.route);
  }
}