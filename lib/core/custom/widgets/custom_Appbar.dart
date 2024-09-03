// core/custom/widgets/custom_Appbar.dart

import 'package:flutter/material.dart';

import '../../styles/color_style.dart';
import '../../styles/font_style.dart';

AppBar customAppBar({
  required BuildContext context,
  required String title,
  required Icon iconleading,
}) {
  return AppBar(
    leading: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: iconleading,
      ),
    ),
    title: Text(
      title,
      style: TextsStyle.bold19.copyWith(color: AppColors.grayscale950),
    ),
  );
}
