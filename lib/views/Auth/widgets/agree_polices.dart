import 'package:flutter/material.dart';
import 'package:fruits_shop/const/color.dart';

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
            activeColor: ColorConst.primaryColor,
            value: chack,
            onChanged: (value) {
              setState(() {
                chack = value!;
              });
            }),
        Container(
          width: MediaQuery.of(context).size.width * 0.75,
          child: Text(
              "من خلال إنشاء حساب ، فإنك توافق على الشروط والأحكام الخاصة بنا"),
        ),
      ],
    );
  }
}