// components/Home/custom/widgets/custom_home_appbar.dart
import 'package:flutter/material.dart';

import '../../../../core/assets/assets_image.dart';
import '../../../../core/styles/color_style.dart';
import '../../../../core/styles/font_style.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Image.asset(Assets.assetsImagesProfile),
        title: Text(
          "صباح الخير !...",
          style: TextsStyle.regular16.copyWith(color: AppColors.grayscale400),
        ),
        subtitle: Text(
          "أحمد مصطفي",
          style: TextsStyle.bold16.copyWith(color: AppColors.grayscale950),
        ),
        //#EEF8ED
        trailing: CircleAvatar(
          radius: 20,
          backgroundColor: AppColors.green50,
          child: SizedBox(
              height: 20,
              width: 20,
              child: Image.asset(Assets.assetsImagesNotification)),
        ));
  }
}
