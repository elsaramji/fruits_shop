// components/Home/widgets/offer_Image.dart
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/assets/assets_image.dart';

class OffersBackgroundImage extends StatelessWidget {
  const OffersBackgroundImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      bottom: 0,
      right: 50,
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        child: SvgPicture.asset(
          Assets.assetsImagesPineappleonbording,
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}
