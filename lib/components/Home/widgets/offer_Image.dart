// components/Home/widgets/offer_Image.dart
import 'package:flutter/material.dart';

import '../../../core/assets/assets_image.dart';

class OffersBackgroundImage extends StatelessWidget {
  const OffersBackgroundImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: SizedBox(
          width: MediaQuery.sizeOf(context).width,
          height: 158,
          child: Image.asset(
            Assets.assetsImagesFruitsoffers,
            repeat: ImageRepeat.repeatX,
            fit: BoxFit.fill,
          )),
    );
  }
}
