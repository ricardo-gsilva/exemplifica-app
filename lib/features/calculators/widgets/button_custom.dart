import 'package:exemplifica/core/constants/core_colors.dart';
import 'package:exemplifica/core/constants/core_fontSize.dart';
import 'package:exemplifica/core/extensions/math_category_color.dart';
import 'package:exemplifica/core/ui/enums/math_category_enum.dart';
import 'package:flutter/material.dart';

class ButtonCustom extends StatelessWidget {
  final String title;
  final void Function() onPressed;
  final double height;
  final double width;
  final MathCategory category;

  const ButtonCustom({
    Key? key,
    required this.title,
    required this.onPressed,
    required this.height,
    required this.width,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: SizedBox(      
        height: height,
        width: width,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: category.color!.shade600,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)
            )
          ),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: CoreColors.textPrimary,
              fontSize: CoreFontSize.h_16,
              fontWeight: FontWeight.bold
            ),
          ),
          onPressed: onPressed,
        )
      ),
    );
  }
}
