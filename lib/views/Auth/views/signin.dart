// views/Auth/views/signin.dart
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_shop/const/color.dart';
import 'package:fruits_shop/const/initial_values.dart';
import 'package:fruits_shop/core/assets/assets_image.dart';
import 'package:fruits_shop/core/multiple/Style/custom_buttons_style.dart';
import 'package:fruits_shop/core/multiple/widgets/custom_button.dart';
import 'package:fruits_shop/core/multiple/widgets/custom_text_filed.dart';
import 'package:fruits_shop/views/Auth/widgets/custom_auth_button.dart';
import 'package:fruits_shop/views/Auth/widgets/custom_divider.dart';
import 'package:fruits_shop/views/Auth/widgets/email_login.dart';
import 'package:fruits_shop/views/Auth/widgets/social_auth_buttons.dart';

class SigninView extends StatelessWidget {
  static const String route = "/signin";
  const SigninView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("تسجيل الدخول"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: InitialValues.initial_tow),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Email_Login(),
                SizedBox(
                  height: InitialValues.initial_three,
                ),
                CustomDivider(),
                SizedBox(
                  height: InitialValues.initial_tow,
                ),
                SocialAuthentication()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
