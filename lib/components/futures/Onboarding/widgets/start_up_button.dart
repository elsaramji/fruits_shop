// components/futures/Onboarding/widgets/start_up_button.dart

import 'package:flutter/material.dart';
import 'package:fruits_shop/constant/keys.dart';
import 'package:fruits_shop/core/helper/presence.dart';
import 'package:fruits_shop/core/multiple/Style/custom_buttons_style.dart';
import 'package:fruits_shop/core/multiple/widgets/custom_button.dart';

import '../../Auth/views/login_view.dart';

class StartUpButton extends StatelessWidget {
  const StartUpButton({
    super.key,
    required this.curnetpage,
  });

  final int curnetpage;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: curnetpage != 0 ? true : false,
      maintainAnimation: true,
      maintainSize: true,
      maintainState: true,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: CustomButton(
          titel: "ابدأ الان",
          onPressed: () {
            Preferences.setBool(Keys.isviewedOnBoarding, true);
            Navigator.pushReplacementNamed(context, LoginView.route);
          },
          style: CustomButtonsStyle.primeryButtonstyle,
        ),
      ),
    );
  }
}
