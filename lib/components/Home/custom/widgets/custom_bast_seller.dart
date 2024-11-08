// components/Home/custom/widgets/custom_bast_seller.dart
import 'package:flutter/material.dart';

import '../../../../core/models/product.dart';
import '../../../../core/styles/color_style.dart';
import '../../../../core/styles/font_style.dart';
import '../../../products/widget/product_card.dart';

class BestSellerManu extends StatelessWidget {
  const BestSellerManu({
    super.key,
    required this.products,
  });

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
        itemCount: products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 16,
          childAspectRatio: 163 / 214,
        ),
        itemBuilder: (context, index) => ProductCard(product: products[index]));
  }
}

class BastSellerBar extends StatelessWidget {
  const BastSellerBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Text(
              "الأكثر مبيعًا",
              style: TextsStyle.bold16.copyWith(color: AppColors.grayscale950),
            ),
            Spacer(),
            Text(
              "المزيد...",
              style:
                  TextsStyle.regular13.copyWith(color: AppColors.grayscale400),
            ),
          ],
        ),
      ),
    );
  }
}
