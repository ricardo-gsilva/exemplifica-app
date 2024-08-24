import 'package:exemplifica/utils/constants/core_fontSize.dart';
import 'package:exemplifica/utils/constants/core_keys.dart';
import 'package:exemplifica/view/atoms/custom_text.dart';
import 'package:exemplifica/view/molecules/text_field_input.dart';
import 'package:flutter/material.dart';
import 'package:exemplifica/utils/constants/core_colors.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/view/molecules/row_buttons.dart';

class CalculatorForm extends StatelessWidget {
  final List<TextEditingController> controller;
  final List<String> label;
  final double height;
  final double width;
  final String? title;
  final void Function() onTapFirst;
  final void Function() onTapSecond;
  const CalculatorForm({
    Key? key,
    required this.controller,
    required this.label,
    required this.height,
    required this.width,
    required this.onTapFirst,
    required this.onTapSecond,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      key: Key(CoreKeys.calculatorForm),
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        decoration: BoxDecoration(
            color: CoreColors.appBarColor,
            borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              CustomText(title: title??'', fontSize: CoreFontSize.h_22, color: CoreColors.textSecundary, fontWeight: FontWeight.bold,),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: controller.length,
                itemBuilder: (_, i) {
                  return CustomTextFieldInput(
                    title: label[i],
                    hintText: "Digite aqui",
                    controller: controller[i],
                  );
                },
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
