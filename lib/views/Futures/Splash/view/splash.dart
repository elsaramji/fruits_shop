// views/Futures/Splash/view/splash.dart
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_shop/const/path.dart';
import 'package:fruits_shop/core/assets/assets_image.dart';
import 'package:fruits_shop/views/Futures/Onboarding/view/onBoardingMain.dart';

class Splash extends StatefulWidget {
  static const String route = '/splash';
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    navigator(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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

void navigator(context) async {
  await Future.delayed(const Duration(seconds: 3));
  Navigator.pushReplacementNamed(context, OnBoarding.route);
}
