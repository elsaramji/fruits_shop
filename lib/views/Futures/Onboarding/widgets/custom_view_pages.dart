// views/Futures/Onboarding/widgets/custom_view_pages.dart

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomViewPages extends StatelessWidget {
  final String subtitel, bacgroundpath, imagepath;
  final Widget title;
  const CustomViewPages(
      {super.key,
      required this.subtitel,
      required this.bacgroundpath,
      required this.imagepath,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.5,
            child: Stack(
              children: [
                Positioned.fill(
                  child: SvgPicture.asset(
                    bacgroundpath,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: SvgPicture.asset(imagepath)),
              ],
            ),
          ),
          Column(
            children: [title, Text(subtitel)],
          )
        ],
      ),
    );
  }
}
