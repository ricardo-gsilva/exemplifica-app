import 'package:exemplifica/utils/constants/core_fontSize.dart';
import 'package:exemplifica/view/molecules/text_field_input.dart';
import 'package:flutter/material.dart';
import 'package:exemplifica/utils/constants/core_colors.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/view/atoms/custom_text.dart';
import 'package:exemplifica/view/molecules/row_button.dart';

class CalculatorForm2 extends StatelessWidget {
  final double height;
  final double width;
  final List<TextEditingController> controller;
  final void Function() onTapFirst;
  final void Function() onTapSecond;
  const CalculatorForm2({
    Key? key,
    required this.height,
    required this.width,
    required this.controller,
    required this.onTapFirst,
    required this.onTapSecond,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        decoration: BoxDecoration(
          color: CoreColors.appBarColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomText(title: "Atributo 1"),
                  CustomText(title: "Atributo 2"),
                ],
              ),
              Row(
                children: [
                  CustomTextFieldInput(
                      controller: controller[0],
                      mainAxisAlignment: MainAxisAlignment.start,
                      title: "",
                      hintText: ""),
                  controller.length < 3
                      ? Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: CustomText(
                            title: "100%",
                            fontSize: CoreFontSize.h_22,
                          ),
                        )
                      : CustomTextFieldInput(
                          controller: controller[2],
                          mainAxisAlignment: MainAxisAlignment.start,
                          title: "",
                          hintText: ""),
                ],
              ),
              Row(
                children: [
                  CustomTextFieldInput(
                      controller: controller[1],
                      mainAxisAlignment: MainAxisAlignment.start,
                      title: "",
                      hintText: ""),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: CustomText(
                      title: "X",
                      fontSize: CoreFontSize.h_22,
                    ),
                  )
                ],
              ),
              RowButtons(
                height: height * 0.05,
                width: width * 0.35,
                titleFirst: CoreStrings.calc,
                titleSecond: CoreStrings.clear,
                onTapFirst: onTapFirst,
                onTapSecond: onTapSecond,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
