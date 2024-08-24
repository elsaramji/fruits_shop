// multiple/widgets/custom_text_filed.dart
import 'package:flutter/material.dart';

// widgets/normal_filed.dart

class CustomTextFiled extends StatefulWidget {
  final String hints;

  final Function(String)? onChanged;
  final String? Function(String?)? onValied;
  final Widget? sficon;
  bool? suceur;
  final VoidCallback? onPressedicon;
  final TextEditingController? controller;
  CustomTextFiled({
    super.key,
    this.onPressedicon,
    this.sficon,
    this.controller,
    this.onValied,
    required this.hints,
    required this.onChanged,
    this.suceur,
  });

  @override
  State<CustomTextFiled> createState() => _CustomTextFiledState();
}

class _CustomTextFiledState extends State<CustomTextFiled> {
  @override

  /// Builds a [TextFormField] widget.
  ///
  /// The [TextFormField] widget is a form input field that allows users to enter
  /// text. It is typically used within a [Form] widget.
  ///
  /// The [widget.controller] parameter is the [TextEditingController] that controls the
  /// text being edited.
  ///
  /// The [widget.onChanged] parameter is a callback function that is called whenever the
  /// text in the field changes.
  ///
  /// The [widget.onValied] parameter is a callback function that is called when the field
  /// loses focus. It is used to validate the input.
  ///
  /// The [widget.sficon] parameter is the icon to be displayed as a suffix. If it is
  /// `null`, no suffix icon is displayed.
  ///
  /// The [widget.onPressedicon] parameter is the callback function to be called when the
  /// suffix icon is pressed.
  ///
  /// The [widget.title] parameter is the label for the input field.
  ///
  /// Returns a [TextFormField] widget.
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      onChanged: widget.onChanged,
      validator: widget.onValied,
      obscureText: widget.suceur ?? false,
      decoration: InputDecoration(
        fillColor: Color(0xffF9FAFA),
        hintText: widget.hints,
        hintStyle: const TextStyle(color: Color(0xff949D9E)),
        /*
        label: Text(
          widget.title,
          style: const TextStyle(color: secondarytextColor),
        ),*/
        suffixIcon: widget.sficon != null
            ? IconButton(
                icon: widget.sficon!,
                onPressed: widget.onPressedicon,
              )
            : const SizedBox(),
        enabledBorder: TextfildeBorders.normallyborder(),
        focusedBorder: TextfildeBorders.normallyborder(),
        errorBorder: TextfildeBorders.errorborder(),
        focusedErrorBorder: TextfildeBorders.errorborder(),
      ),
    );
  }
}

class TextfildeBorders {
  static OutlineInputBorder normallyborder() {
    return const OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xffE6E9EA)),
    );
  }

  static OutlineInputBorder errorborder() {
    return const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red),
    );
  }
}
