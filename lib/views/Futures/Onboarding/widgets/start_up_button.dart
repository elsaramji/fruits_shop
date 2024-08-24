// views/Futures/Onboarding/widgets/start_up_button.dart

import 'package:flutter/material.dart';
import 'package:fruits_shop/core/multiple/Style/custom_buttons_style.dart';
import 'package:fruits_shop/core/multiple/widgets/custom_button.dart';

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
              style: TextStyle(color: Colors.white),
            )),
          ),
          onPressed: () {},
          style: CustomButtonsStyle.dufletButtonstyle,
        ),
      ),
    );
  }
}
