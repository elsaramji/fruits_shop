// components/futures/splash/view/splash.dart
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_shop/components/futures/splash/logics/splash_logic.dart';
import 'package:fruits_shop/core/assets/assets_image.dart';


class Splash extends StatefulWidget {
  static const String route = '/splash';
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    SplashLogic.goToApp(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
              alignment: Alignment.topLeft,
              child: SvgPicture.asset(Assets.assetsImagesPlant)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(Assets.assetsImagesLogo),
            ],
          ),
          Row(
            children: [
              SvgPicture.asset(Assets.assetsImagesEndofsplash,
                  width: MediaQuery.of(context).size.width)
            ],
          ),
        ],
      ),
    );
  }
}
