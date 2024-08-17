import 'package:flutter/material.dart';
import 'package:exemplifica/components/text_field_input.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String title;
  final String hintText;
  const CustomTextField({
    Key? key,
    required this.controller,
    required this.title,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldInput(
      title: title,
      hintText: hintText,
      controller: controller,
      maxLength: 5,
    );
  }
}
