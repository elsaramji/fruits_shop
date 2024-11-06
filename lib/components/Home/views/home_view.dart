// components/Home/views/home_view.dart
import 'package:flutter/material.dart';
import 'package:fruits_shop/core/assets/assets_image.dart';
import '../../../core/models/product.dart';
import '../custom/widgets/custom_bast_seller.dart';
import '../custom/widgets/custom_home_appbar.dart';
import '../custom/widgets/custom_prodcut_searchbar.dart';
import '../widgets/offers_scroll.dart';

class HomeView extends StatelessWidget {
  static const String id = 'HomeView';

  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Product> products = [
      Product(
          name: 'بطيخ',
          image: Assets.assetsImagesWatermelon,
          price: 100,
          unit: "كيلو"),
      Product(
        name: "فراولة",
        image: Assets.assetsImagesStrurewripry,
        price: 100,
        unit: "كيلو",
      ),
      Product(
        name: "اناناس",
        image: Assets.assetsImagesPineapple,
        price: 100,
        unit: "كيلو",
      ),
      Product(
        name: "افوكادو",
        image: Assets.assetsImagesAvocado,
        price: 100,
        unit: "كيلو",
      ),
      Product(
        name: "موز",
        image: Assets.assetsImagesPinna,
        price: 100,
        unit: "كيلو",
      ),
      Product(
        name: "مانجو",
        image: Assets.assetsImagesMango,
        price: 100,
        unit: "كيلو",
      ),
    ];
    return Scaffold(
      body: SafeArea(
          child: SizedBox(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        child: Column(children: [
          // bar Section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                SizedBox(height: 16),
                CustomHomeAppBar(),
                SizedBox(height: 12),
                CustomProductSearchBar(
                  onChanged: (value) {},
                ),
                SizedBox(height: 12),
              ],
            ),
          ),
          // body Section
          // offers
          OffersScroll(),
          //bast seller
          BastSellerBar(),
          // Products
          Expanded(child: BestSellerManu(products: products)),
          // Bottom Section
        ]),
      )),
    );
  }
}
