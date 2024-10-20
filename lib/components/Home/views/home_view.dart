// components/Home/views/home_view.dart

import 'package:flutter/material.dart';

import '../custom/widgets/custom_home_appbar.dart';

class HomeView extends StatelessWidget {
  static const String id = 'HomeView';
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(children: [CustomHomeAppBar()])),
    );
  }
}
