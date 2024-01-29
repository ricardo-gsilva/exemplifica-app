// ignore_for_file: must_be_immutable

import 'package:exemplifica/utils/constants/core_colors.dart';
import 'package:flutter/material.dart';

class TextFieldCustom extends StatelessWidget {
  double? width;
  double? height;
  TextEditingController? controller;
  String? hintText;

  TextFieldCustom(
      {required this.controller,
      required this.height,
      required this.width,
      required this.hintText,
      super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
            border:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.amber)),
            hintText: hintText,
            labelText: "",
            labelStyle: TextStyle(color: CoreColors.textPrimary)),
        textAlign: TextAlign.center,
        style: TextStyle(color: CoreColors.textPrimary, fontSize: 23.0),
        controller: controller,
        maxLength: 10,
      ),
    );
  }
}
