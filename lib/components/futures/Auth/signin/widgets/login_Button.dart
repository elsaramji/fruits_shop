// components/futures/Auth/signin/widgets/login_Button.dart
import 'package:flutter/material.dart';

import '../../../../../core/custom/widgets/custom_button.dart';

class SigninButton extends StatelessWidget {
  final void Function()? onPressed;
  const SigninButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      titel: "تسجيل الدخول",
      onPressed: onPressed,
    );
  }
}
