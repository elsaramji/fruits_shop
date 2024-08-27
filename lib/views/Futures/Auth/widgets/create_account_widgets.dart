// views/Futures/Auth/widgets/create_account_widgets.dart
import 'package:flutter/material.dart';
import 'package:fruits_shop/views/Futures/Auth/widgets/agree_polices.dart';
import 'package:fruits_shop/views/Futures/Auth/widgets/create_account_buttons.dart';
import 'package:fruits_shop/views/Futures/Auth/widgets/create_account_fields.dart';

class CreateNewAccountWidgets extends StatelessWidget {
  const CreateNewAccountWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreateAccountFileds(),
        ChackPolices(),
        CreateAccountButtons()
      ],
    );
  }
}