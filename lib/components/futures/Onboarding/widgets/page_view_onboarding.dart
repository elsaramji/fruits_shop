// components/futures/Onboarding/widgets/page_view_onboarding.dart

import 'package:flutter/material.dart';

import '../../../../Futures/Onboarding/widgets/dot_page.dart';
import '../view/onBoardingone.dart';
import '../view/onBoardingtow.dart';
import 'start_up_button.dart';

class PageViewBoarding extends StatefulWidget {
  const PageViewBoarding({super.key});

  @override
  State<PageViewBoarding> createState() => _PageViewBoardingState();
}

@override
class _PageViewBoardingState extends State<PageViewBoarding> {
  late PageController pageController;
  int curnetpage = 0;

  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      curnetpage = pageController.page!.round();
      setState(() {
        curnetpage = pageController.page!.round();
      });
    });
    super.initState();
  }

  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: pageController,
              scrollDirection: Axis.horizontal,
              children: [Onboardingone(), Onboardingtow()],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          DotsPage(curnetpage: curnetpage),
          SizedBox(
            height: 16,
          ),
          StartUpButton(curnetpage: curnetpage),
          SizedBox(
            height: 32,
          ),
        ],
      ),
    );
  }
}
