import 'package:exemplifica/core/ui/enums/math_category_enum.dart';
import 'package:exemplifica/features/calculators/widgets/button_custom.dart';
import 'package:flutter/material.dart';

class RowButtons extends StatelessWidget {
  final double height;
  final double width;
  final String titleFirst;
  final String titleSecond;
  final void Function() onTapFirst;
  final void Function() onTapSecond;
  final MathCategory category;

  RowButtons({
    required this.height,
    required this.width,
    required this.titleFirst, 
    required this.titleSecond,
    required this.onTapFirst, 
    required this.onTapSecond,
    required this.category,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ButtonCustom(
          category: category,
          onPressed: onTapFirst,
          title: titleFirst,
          height: height,
          width: width,
        ),
        ButtonCustom(
          category: category,
          onPressed: onTapSecond,
          title: titleSecond,
          height: height,
          width: width,
        ),
      ],
    );
  }
}
