// ignore_for_file: must_be_immutable

import 'package:exemplifica/utils/constants/core_colors.dart';
import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {
  String? title;
  String? hintText;
  TextEditingController? controller;
  TextFieldInput(
      {required this.title,
      required this.hintText,
      required this.controller,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 5, top: 5),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.7,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title ?? '',
              style: TextStyle(
                  fontSize: 20.0,
                  color: CoreColors.textPrimary,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .3,
              height: 70,
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.amber)),
                    hintText: hintText,
                    labelText: "",
                    labelStyle: TextStyle(color: CoreColors.textPrimary)),
                textAlign: TextAlign.center,
                style: TextStyle(color: CoreColors.textPrimary, fontSize: 23.0),
                controller: controller,
                maxLength: 9,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
