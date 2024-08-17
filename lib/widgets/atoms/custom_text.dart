import 'package:exemplifica/utils/constants/core_colors.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String title;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;

  const CustomText({
    Key? key,
    required this.title,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.textAlign,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Text(
        title,
        textAlign: textAlign,
        style: TextStyle(
          color: color?? CoreColors.textPrimary,
          fontSize: fontSize?? 16,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
