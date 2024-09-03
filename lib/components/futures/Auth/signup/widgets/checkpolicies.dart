// components/futures/Auth/signup/widgets/checkpolicies.dart
import 'package:flutter/material.dart';

import '../../../../../core/styles/color_style.dart';

class ChackPolices extends StatefulWidget {
  const ChackPolices({
    super.key,
  });

  @override
  State<ChackPolices> createState() => _ChackPolicesState();
}

class _ChackPolicesState extends State<ChackPolices> {
  var chack = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Checkbox(
            value: chack,
            onChanged: (value) {
              setState(() {
                chack = value!;
              });
            }),
        Expanded(
          child: Text.rich(TextSpan(children: [
            TextSpan(text: " من خلال إنشاء حساب ، "),
            TextSpan(
                text: "فإنك توافق على الشروط والأحكام الخاصة بنا",
                style: TextStyle(color: AppColors.green1700)),
          ])),
        ),
      ],
    );
  }
}