// components/futures/Auth/signup/view/signup.dart
import 'package:flutter/material.dart';
import '../../../../../core/custom/widgets/custom_Appbar.dart';
import '../widgets/checkpolicies.dart';
import '../widgets/have_account.dart';
import '../widgets/signup_Button.dart';
import '../widgets/signup_textfeilds.dart';

class Signup extends StatelessWidget {
  static const route = '/signup';
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
          context: context,
          title: 'تسجيل حساب',
          iconleading: const Icon(Icons.arrow_back_ios)),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 24),
              SingupTextFields(),
              SizedBox(height: 16),
              ChackPolices(),
              SizedBox(height: 30),
              SignupButton(),
              SizedBox(height: 26),
              HaveAccount()
            ],
          ),
        ),
      ),
    );
  }
}
