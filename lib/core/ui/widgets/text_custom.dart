import 'package:exemplifica/core/constants/core_colors.dart';
import 'package:flutter/material.dart';

class TextCustom extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final int? maxLines;

  const TextCustom({
    Key? key,
    required this.text,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.textAlign,
    this.maxLines,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Text(
        text,
        textAlign: textAlign,
        maxLines: maxLines,
        style: TextStyle(
          color: color?? CoreColors.textPrimary,
          fontSize: fontSize?? 16,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
