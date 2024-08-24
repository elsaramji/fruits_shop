// views/Auth/views/signin.dart
import 'package:flutter/material.dart';
import 'package:fruits_shop/core/multiple/Style/custom_buttons_style.dart';
import 'package:fruits_shop/core/multiple/widgets/custom_button.dart';
import 'package:fruits_shop/core/multiple/widgets/custom_text_filed.dart';

class SigninView extends StatelessWidget {
  static const String route = "/signin";
  const SigninView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("تسجيل الدخول"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              CustomTextFiled(
                  hints: "البريد الالكترونى", onChanged: (value) {}),
              CustomTextFiled(hints: "كلمة المرور", onChanged: (value) {}),
              CustomButton(
                child: SizedBox(
                    height: 54,
                    child: Center(
                      child: Text("تسجيل الدخول",
                          style: TextStyle(color: Colors.white)),
                    )),
                onPressed: () {},
                style: CustomButtonsStyle.dufletButtonstyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
