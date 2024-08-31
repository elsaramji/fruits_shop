// views/Futures/Onboarding/widgets/start_up_button.dart

import 'package:flutter/material.dart';
import 'package:fruits_shop/const/keys.dart';
import 'package:fruits_shop/core/helper/presence.dart';
import 'package:fruits_shop/core/multiple/Style/custom_buttons_style.dart';
import 'package:fruits_shop/core/multiple/widgets/custom_button.dart';
import 'package:fruits_shop/core/styles/font_style.dart';

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
          child: SizedBox(
            height: 54,
            child: Center(
                child: Text(
              "ابدأ الان",
              style: TextsStyle.bold16.copyWith(color: Colors.white),
            )),
          ),
          onPressed: () {
            Preferences.setBool(Keys.isviewedOnBoarding, true);
          },
          style: CustomButtonsStyle.primeryButtonstyle,
        ),
      ),
    );
  }
}
