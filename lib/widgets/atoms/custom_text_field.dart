import 'package:exemplifica/utils/constants/core_colors.dart';
import 'package:exemplifica/utils/constants/core_fontSize.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String title;
  final String hintText;
  final MainAxisAlignment? mainAxisAlignment;
  const CustomTextField({
    Key? key,
    required this.controller,
    required this.title,
    required this.hintText,
    this.mainAxisAlignment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          filled: true,
          fillColor: CoreColors.fillColorTextField,
          border: OutlineInputBorder(
              borderSide: BorderSide(color: CoreColors.borderSide)),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: CoreColors.focusBorder)),
          errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: CoreColors.borderAlert)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: CoreColors.enableBorder)),
          errorStyle: TextStyle(color: CoreColors.errorAlert),
          focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: CoreColors.borderAlert)),
          counterStyle: const TextStyle(color: CoreColors.textPrimary),
          hintText: hintText,
          labelText: "",
          labelStyle: TextStyle(color: CoreColors.textPrimary)),
      textAlign: TextAlign.center,
      textAlignVertical: TextAlignVertical.bottom,
      style:
          TextStyle(color: CoreColors.textPrimary, fontSize: CoreFontSize.h_22),
      controller: controller,
      maxLength: 5,
    );
  }
}
