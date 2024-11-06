// components/Home/widgets/offers_widget.dart

import 'package:flutter/material.dart';
import 'package:fruits_shop/components/Home/widgets/offer_Image.dart';
import 'package:fruits_shop/components/Home/widgets/offers_opinions.dart';

class OfferWiget extends StatelessWidget {
  const OfferWiget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: AspectRatio(
        aspectRatio: 342 / 158,
        child: Stack(children: [
          OffersBackgroundImage(),
          OffersOpinionsBackground(),
          OffersOptions(),
        ]),
      ),
    );
  }
}
