import 'package:exemplifica/widgets/atoms/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:exemplifica/utils/constants/core_colors.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/widgets/atoms/custom_text_field.dart';
import 'package:exemplifica/widgets/molecules/row_button.dart';

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
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        decoration: BoxDecoration(
            color: CoreColors.appBarColor,
            borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              CustomText(title: title??'', fontSize: 22, color: CoreColors.textSecundary, fontWeight: FontWeight.bold,),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: controller.length,
                itemBuilder: (_, i) {
                  return CustomTextField(
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
