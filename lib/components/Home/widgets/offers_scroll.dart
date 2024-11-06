// components/Home/widgets/offers_scroll.dart

import 'package:flutter/material.dart';

import 'offers_widget.dart';

class OffersScroll extends StatelessWidget {
  const OffersScroll({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 342 / 158,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(4, (index) => OfferWiget()),
        ),  
      ),
    );
  }
}