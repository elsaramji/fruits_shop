// components/futures/Auth/views/login_view.dart
import 'package:flutter/material.dart';
import 'package:fruits_shop/components/futures/Auth/widgets/navigate_create_Account.dart';
import 'package:fruits_shop/core/multiple/widgets/custom_button.dart';
import 'package:fruits_shop/core/multiple/widgets/custom_or_divider.dart';
import 'package:fruits_shop/core/multiple/widgets/custom_text_filed.dart';
import 'package:fruits_shop/core/styles/color_style.dart';

import '../../../../core/multiple/widgets/custom_Appbar.dart';
import '../widgets/navigate_forgetpassword.dart';
import '../widgets/social_auth_buttons.dart';

class LoginView extends StatelessWidget {
  static const route = '/login_view';
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
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
              CustomTextformField(
                  keybordetepy: TextInputType.emailAddress,
                  hinttext: "البريد الالكتروني",
                  controller: emailController),
              const SizedBox(height: 16),
              CustomTextformField(
                  keybordetepy: TextInputType.visiblePassword,
                  hinttext: "كلمة المرور",
                  obscuretext: true,
                  suffixicons: [
                    Icon(Icons.visibility, color: AppColors.graySpecial),
                    Icon(Icons.visibility_off, color: AppColors.graySpecial),
                  ],
                  controller: passwordController),
              const SizedBox(height: 16),
              NavigateForgetpassword(),
              SizedBox(
                height: 16,
              ),
              CustomButton(
                titel: "تسجيل الدخول",
                onPressed: () {},
              ),
              SizedBox(
                height: 33,
              ),
              NavigateCreateAccount(),
              SizedBox(
                height: 33,
              ),
              CustomOrDivider(),
              SizedBox(height: 16),
              SocialButtonSection()
            ],
          ),
        ),
      ),
    );
  }
}
