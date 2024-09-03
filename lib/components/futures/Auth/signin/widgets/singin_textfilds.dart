// components/futures/Auth/signin/widgets/singin_textfilds.dart
import 'package:flutter/material.dart';
import '../../../../../core/custom/variables/items.dart';
import '../../../../../core/custom/widgets/custom_text_filed.dart';

class SigninTextFileds extends StatelessWidget {
  const SigninTextFileds({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return Column(
      children: [
        CustomTextformField(
            keybordetepy: TextInputType.emailAddress,
            hinttext: "البريد الالكتروني",
            controller: emailController),
        const SizedBox(height: 16),
        CustomTextformField(
            keybordetepy: TextInputType.visiblePassword,
            hinttext: "كلمة المرور",
            obscuretext: true,
            suffixicons: Items.visiibleIcons,
            controller: passwordController),
        const SizedBox(height: 16),
      ],
    );
  }
}
