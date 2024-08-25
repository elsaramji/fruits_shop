// views/Auth/views/create_new_account.dart

import 'package:flutter/material.dart';
import 'package:fruits_shop/const/initial_values.dart';
import 'package:fruits_shop/views/Auth/widgets/create_account_widgets.dart';

class CreateNewAccount extends StatelessWidget {
  static const String route = "/signup";
  const CreateNewAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("حساب جديد"),
      ),
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: InitialValues.initial_tow),
          child: SingleChildScrollView(
            child: CreateNewAccountWidgets(),
          ),
        ),
      ),
    );
  }
}








