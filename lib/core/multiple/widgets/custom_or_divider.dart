// core/multiple/widgets/custom_or_divider.dart
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:fruits_shop/const/color.dart';
import 'package:fruits_shop/core/styles/color_style.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Divider(
          color: ColorConst.primaryLiner,
          thickness: 1,
        ),
        Positioned(
            right: 0,
            left: 0,
            child: Container(
                height: 22,
                color: AppColors.white,
                child: Text(
                  "أو",
                  style: TextStyle(color: AppColors.grayscale950),
                ))),
      ],
    );
  }
}
