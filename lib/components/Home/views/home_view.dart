// components/Home/views/home_view.dart

import 'package:flutter/material.dart';

import '../custom/widgets/custom_home_appbar.dart';
import '../custom/widgets/custom_prodcut_searchbar.dart';

class HomeView extends StatelessWidget {
  static const String id = 'HomeView';
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
            ],
          ),
        ),
        // body Section
      ])),
    );
  }
}
