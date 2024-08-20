import 'package:exemplifica/utils/constants/core_colors.dart';
import 'package:exemplifica/utils/constants/core_fontSize.dart';
import 'package:exemplifica/view/atoms/custom_text.dart';
import 'package:exemplifica/view/atoms/custom_text_field.dart';
import 'package:flutter/material.dart';

class CustomTextFieldInput extends StatelessWidget {
  final TextEditingController controller;
  final String title;
  final String hintText;
  final MainAxisAlignment? mainAxisAlignment;
  const CustomTextFieldInput({
    Key? key,
    required this.controller,
    required this.title,
    required this.hintText,
    this.mainAxisAlignment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, bottom: 5, top: 5),
      child: SizedBox(
        child: Row(
          mainAxisAlignment:
              mainAxisAlignment ?? MainAxisAlignment.spaceBetween,
          children: [
            CustomText(
              title: title,
              fontSize: CoreFontSize.h_20,
              color: CoreColors.textPrimary,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .3,
              height: 70,
              child: CustomTextField(
                controller: controller,
                title: title,
                hintText: hintText,
              ),              
            ),
          ],
        ),
      ),
    );
  }
}
