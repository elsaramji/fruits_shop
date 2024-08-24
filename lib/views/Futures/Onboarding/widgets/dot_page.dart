import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruits_shop/const/color.dart';

class DotsPage extends StatelessWidget {
  const DotsPage({
    super.key,
    required this.curnetpage,
  });

  final int curnetpage;

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: 2,
      decorator: DotsDecorator(
        activeColor: ColorConst.primaryColor,
        color: curnetpage != 1
            ? ColorConst.primaryColor.withOpacity(0.5)
            : ColorConst.primaryColor,
      ),
    );
  }
}