import 'package:exemplifica/core/constants/core_fontSize.dart';
import 'package:exemplifica/core/extensions/math_category_color.dart';
import 'package:exemplifica/core/ui/enums/math_category_enum.dart';
import 'package:exemplifica/core/ui/widgets/text_custom.dart';
import 'package:exemplifica/features/calculators/widgets/text_field_input_custom.dart';
import 'package:flutter/material.dart';
import 'package:exemplifica/core/constants/core_colors.dart';
import 'package:exemplifica/core/constants/core_strings.dart';
import 'package:exemplifica/features/calculators/widgets/row_buttons.dart';

class CalculatorForm extends StatelessWidget {
  final List<TextEditingController> controller;
  final List<String> label;
  final double height;
  final double width;
  final String? title;
  final void Function() onTapFirst;
  final void Function() onTapSecond;
  final MathCategory category;

  const CalculatorForm({
    Key? key,
    required this.controller,
    required this.label,
    required this.height,
    required this.width,
    required this.onTapFirst,
    required this.onTapSecond,
    required this.category,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        decoration: BoxDecoration(
            color: category.color!.shade200,
            borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              TextCustom(
                text: title ?? '',
                fontSize: CoreFontSize.h_22,
                color: CoreColors.textPrimary,
                fontWeight: FontWeight.bold,
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: controller.length,
                itemBuilder: (_, i) {
                  return TextFieldInputCustom(
                    title: label[i],
                    hintText: CoreStrings.inputPlaceholder,
                    controller: controller[i],
                  );
                },
              ),
              SizedBox(height: 15),
              RowButtons(
                category: category,
                height: height * 0.05,
                width: width * 0.35,
                titleFirst: CoreStrings.calculate,
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
