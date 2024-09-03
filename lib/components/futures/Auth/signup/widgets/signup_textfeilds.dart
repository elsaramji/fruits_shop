import 'package:flutter/material.dart';

import '../../../../../core/custom/variables/items.dart';
import '../../../../../core/custom/widgets/custom_text_filed.dart';

class SingupTextFields extends StatelessWidget {
  const SingupTextFields({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController namecontroller = TextEditingController();
    TextEditingController emailcontroller = TextEditingController();
    TextEditingController passwordcontroller = TextEditingController();
    return Column(
      children: [
        CustomTextformField(
            keybordetepy: TextInputType.name,
            hinttext: "الاسم كامل",
            controller: namecontroller),
        SizedBox(height: 16),
        CustomTextformField(
            keybordetepy: TextInputType.emailAddress,
            hinttext: "البريد الالكتروني",
            controller: emailcontroller),
        SizedBox(height: 16),
        CustomTextformField(
            keybordetepy: TextInputType.visiblePassword,
            hinttext: "كلمة المرور",
            obscuretext: true,
            suffixicons: Items.visiibleIcons,
            controller: passwordcontroller),
      ],
    );
  }
}