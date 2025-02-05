// components/futures/Auth/signup/view/signup_view_widget.dart


import 'package:flutter/material.dart';

import 'package:fruits_shop/components/futures/Auth/signup/widgets/have_account.dart';

import '../widgets/signup_addUserform.dart';

class SignupView extends StatelessWidget {
  const SignupView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
  
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 24),
            const AddUserForm(),
            SizedBox(height: 26),
            const HaveAccount()
          ],
        ),
      ),
    );
  }
}
