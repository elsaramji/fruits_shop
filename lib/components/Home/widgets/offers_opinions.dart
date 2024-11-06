// components/Home/widgets/offers_opinions.dart
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/assets/assets_image.dart';
import '../../../core/styles/color_style.dart';
import '../../../core/styles/font_style.dart';
import '../custom/widgets/custom_button_items.dart';

class OffersOptions extends StatelessWidget {
  const OffersOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * 0.30,
      child: Positioned(
          right: 0,
          bottom: 0,
          left: 0,
          child: Padding(
            padding: const EdgeInsets.only(right: 16, left: 16, bottom: 16),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("عرض العيد",
                      style: TextsStyle.regular13.copyWith(
                        color: AppColors.white,
                      )),
                  Text(
                    "خصم %25",
                    style: TextsStyle.bold19.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                  CustomButtonItem(
                      titel: "تسوق الان",
                      onPressed: () {},
                      titelcolor: AppColors.primaryColor),
                ]),
          )),
    );
  }
}

class OffersOpinionsBackground extends StatelessWidget {
  const OffersOpinionsBackground({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      top: 0,
      bottom: 0,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(4), bottomRight: Radius.circular(4)),
        child: SvgPicture.asset(
          Assets.assetsImagesOfferFuture,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
