import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_shop/core/multiple/Style/custom_buttons_style.dart';
import 'package:fruits_shop/core/multiple/widgets/custom_button.dart';

class CustomAuthButton extends StatelessWidget {
  final String title, iconphat;
  final void Function()? onTouch;
  const CustomAuthButton({
    super.key,
    required this.title,
    required this.iconphat,
    this.onTouch,
  });

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      style: CustomButtonsStyle.apiAuthButtonstyle,
      onPressed: onTouch,
      child: SizedBox(
        height: 54,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(
              iconphat,
            ),
            Expanded(
              child: Center(
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
