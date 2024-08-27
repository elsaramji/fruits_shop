// views/Auth/views/forgetpassword.dart
import 'package:flutter/material.dart';
import 'package:fruits_shop/const/initial_values.dart';
import 'package:fruits_shop/core/multiple/Style/custom_buttons_style.dart';
import 'package:fruits_shop/core/multiple/widgets/custom_button.dart';
import 'package:fruits_shop/core/multiple/widgets/custom_text_filed.dart';

class Forgetpassword extends StatelessWidget {
  static const String route = "/forgetpassword";
  const Forgetpassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("نسيان كلمة المرور"),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: InitialValues.initial_tow),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: InitialValues.initial_three,
            ),
            Text("لا تقلق ، ما عليك سوى كتابة رقم هاتفك وسنرسل رمز التحقق."),
            SizedBox(
              height: InitialValues.initial_three,
            ),
            CustomTextFiled(
                keybordetepy: TextInputType.numberWithOptions(),
                textAlign: TextAlign.left,
                secur: false,
                hints: "+20 123 567 8911",
                hintStyle: TextStyle(locale: Locale('en')),
                onChanged: (value) {}),
            SizedBox(
              height: InitialValues.initial_three,
            ),
            CustomButton(
              style: CustomButtonsStyle.dufletButtonstyle,
              onPressed: () {},
              child: SizedBox(
                height: 54,
                child: Center(
                  child: Text(
                    "نسيت كلمة المرور",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
