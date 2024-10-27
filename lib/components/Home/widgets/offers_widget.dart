// components/Home/widgets/offers_widget.dart

import 'package:flutter/material.dart';
import 'package:fruits_shop/components/Home/widgets/offer_Image.dart';
import 'package:fruits_shop/components/Home/widgets/offers_opinions.dart';

class Offers extends StatelessWidget {
  const Offers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      width: MediaQuery.sizeOf(context).width,
      height: 158,
      child: Stack(alignment: Alignment.topRight, children: [
        OffersBackgroundImage(),
        OffersOpinionsBackground(),
        OffersOptions(),
      ]),
    );
  }
}