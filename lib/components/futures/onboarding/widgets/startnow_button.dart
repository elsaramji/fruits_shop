// components/futures/onboarding/widgets/startnow_button.dart

import 'package:flutter/material.dart';
import 'package:fruits_shop/components/futures/onboarding/logics/logics_onBoarding.dart';
import 'package:fruits_shop/core/custom/Style/custom_buttons_style.dart';
import 'package:fruits_shop/core/custom/widgets/custom_button.dart';

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
            LogicsOnBoarding.startnow(context);
          },
          style: CustomButtonsStyle.primeryButtonstyle,
        ),
      ),
    );
  }
}
