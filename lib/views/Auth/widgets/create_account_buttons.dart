import 'package:flutter/material.dart';
import 'package:fruits_shop/const/color.dart';
import 'package:fruits_shop/const/initial_values.dart';
import 'package:fruits_shop/core/multiple/Style/custom_buttons_style.dart';
import 'package:fruits_shop/core/multiple/widgets/custom_button.dart';

class CreateAccountButtons extends StatelessWidget {
  const CreateAccountButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: InitialValues.initial_tow,
        ),
        CustomButton(
          style: CustomButtonsStyle.dufletButtonstyle,
          onPressed: () {},
          child: SizedBox(
              height: 54,
              child: Center(
                child: Text(
                  "إنشاء حساب جديد",
                  style: TextStyle(color: ColorConst.primaryWhite),
                ),
              )),
        ),
        SizedBox(
          height: InitialValues.initial_three,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "تمتلك حساب بالفعل؟ ",
              style: TextStyle(color: ColorConst.primaryGray),
            ),
            GestureDetector(
              child: Text(
                "تسجيل دخول",
                style: TextStyle(color: ColorConst.primaryColor),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
