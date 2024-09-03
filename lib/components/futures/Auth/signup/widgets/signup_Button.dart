import 'package:flutter/material.dart';
import 'package:fruits_shop/core/custom/Style/custom_buttons_style.dart';

import '../../../../../core/custom/widgets/custom_button.dart';

class SignupButton extends StatelessWidget {
  const SignupButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      titel: "انشاء حساب",
      onPressed: () {},
      style: CustomButtonsStyle.primeryButtonstyle,
    );
  }
}
