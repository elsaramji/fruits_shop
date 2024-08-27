import 'package:flutter/material.dart';
import 'package:fruits_shop/const/color.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Divider(
          height: 44,
          color: ColorConst.primaryLiner,
          thickness: 2,
        ),
        Positioned(
            right: 0,
            left: 0,
            child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 22,
                child: Text(
                  "أو",
                  style: TextStyle(color: Colors.black),
                ))),
      ],
    );
  }
}