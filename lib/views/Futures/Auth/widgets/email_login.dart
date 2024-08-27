// views/Futures/Auth/widgets/email_login.dart
import 'package:flutter/material.dart';
import 'package:fruits_shop/const/color.dart';
import 'package:fruits_shop/const/initial_values.dart';
import 'package:fruits_shop/core/multiple/Style/custom_buttons_style.dart';
import 'package:fruits_shop/core/multiple/widgets/custom_button.dart';
import 'package:fruits_shop/core/multiple/widgets/custom_text_filed.dart';
import 'package:fruits_shop/views/Futures/Auth/views/create_new_account.dart';
import 'package:fruits_shop/views/Futures/Auth/views/forgetpassword.dart';


class Email_Login extends StatelessWidget {
  const Email_Login({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: InitialValues.initial_three,
        ),
        CustomTextFiled(
            secur: false, hints: "البريد الالكترونى", onChanged: (value) {}),
        SizedBox(
          height: InitialValues.initial_tow,
        ),
        CustomTextFiled(
          secur: true,
          hints: "كلمة المرور",
          onChanged: (value) {},
          sficons: [Icon(Icons.visibility), Icon(Icons.visibility_off)],
        ),
        SizedBox(
          height: InitialValues.initial_tow,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, Forgetpassword.route);
            },
            child: Text(
              "نسيت كلمة المرور؟",
              style: TextStyle(
                color: ColorConst.primaryColor,
              ),
            ),
          ),
        ),
        SizedBox(
          height: InitialValues.initial_tow,
        ),
        CustomButton(
          child: SizedBox(
              height: 54,
              child: Center(
                child:
                    Text("تسجيل الدخول", style: TextStyle(color: Colors.white)),
              )),
          onPressed: () {},
          style: CustomButtonsStyle.dufletButtonstyle,
        ),
        SizedBox(
          height: InitialValues.initial_tow,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "لا تمتلك حساب؟ ",
              style: TextStyle(color: ColorConst.primaryGray),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, CreateNewAccount.route);
              },
              child: Text(
                "قم بإنشاء حساب",
                style: TextStyle(color: ColorConst.primaryColor),
              ),
            )
          ],
        )
      ],
    );
  }
}
