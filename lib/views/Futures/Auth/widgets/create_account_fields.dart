// views/Auth/widgets/create_account_fields.dart
import 'package:flutter/material.dart';
import 'package:fruits_shop/const/initial_values.dart';
import 'package:fruits_shop/core/multiple/widgets/custom_text_filed.dart';

class CreateAccountFileds extends StatelessWidget {
  const CreateAccountFileds({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        height: InitialValues.initial_three,
      ),
      CustomTextFiled(secur: false, hints: "الاسم كامل", onChanged: (vaule) {}),
      SizedBox(
        height: InitialValues.initial_tow,
      ),
      CustomTextFiled(
          secur: false, hints: "البريد الإلكتروني", onChanged: (vaule) {}),
      SizedBox(
        height: InitialValues.initial_tow,
      ),
      CustomTextFiled(
        secur: true,
        hints: "كلمة المرور",
        onChanged: (vaule) {},
        sficons: [Icon(Icons.visibility), Icon(Icons.visibility_off)],
      ),
      SizedBox(
        height: InitialValues.initial_tow,
      ),
    ]);
  }
}
