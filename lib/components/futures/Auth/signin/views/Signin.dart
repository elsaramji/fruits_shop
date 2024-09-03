// components/futures/Auth/signin/views/Signin.dart
import 'package:flutter/material.dart';

import '../../../../../core/custom/widgets/custom_Appbar.dart';

import '../../../../../core/custom/widgets/custom_or_divider.dart';

import '../widgets/dont_have_account.dart';
import '../widgets/forgetpassword.dart';
import '../widgets/login_Button.dart';
import '../widgets/social_auth_buttons.dart';
import '../widgets/singin_textfilds.dart';

class Signin extends StatelessWidget {
  static const route = '/login_view';
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        context: context,
        title: 'تسجيل الدخول',
        iconleading: const Icon(Icons.arrow_back_ios),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 24),
              SigninTextFileds(),
              NavigateForgetpassword(),
              const SizedBox(height: 16),
              LoginButton(),
              // NotHaveAccount
              const SizedBox(height: 33),
              DonthaveAccount(),
              // OrDivider
              const SizedBox(height: 33),
              CustomOrDivider(),
              // SocialButtonSection
              const SizedBox(height: 16),
              SocialButtonSection()
            ],
          ),
        ),
      ),
    );
  }
}
