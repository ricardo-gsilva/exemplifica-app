// ignore_for_file: must_be_immutable

import 'package:exemplifica/utils/constants/core_colors.dart';
import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {
  String? title;
  String? hintText;
  int? maxLength;
  TextEditingController? controller;
  MainAxisAlignment? mainAxisAlignment;
  TextFieldInput(
      {required this.title,
      required this.hintText,
      required this.controller,
      this.maxLength = 9,
      this.mainAxisAlignment,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 5, top: 5),
      child: SizedBox(
        child: Row(
          mainAxisAlignment: mainAxisAlignment?? MainAxisAlignment.spaceBetween,
          children: [
            title == ''? SizedBox():
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
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.amber)),                    
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.white)),
                    errorStyle: TextStyle(color: Colors.red),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)
                    ),
                    counterStyle: const TextStyle(color: Colors.white),
                    hintText: hintText,
                    labelText: "",
                    labelStyle: TextStyle(color: CoreColors.textPrimary)),
                textAlign: TextAlign.center,
                textAlignVertical: TextAlignVertical.bottom,
                style: TextStyle(color: CoreColors.textPrimary, fontSize: 23.0),
                controller: controller,
                maxLength: maxLength,                
              ),
            ),
          ],
        ),
      ),
    );
  }
}
