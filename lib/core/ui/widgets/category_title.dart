import 'package:exemplifica/core/constants/core_colors.dart';
import 'package:exemplifica/core/ui/widgets/text_custom.dart';
import 'package:flutter/material.dart';

class CategoryTitle extends StatelessWidget {
  final String title;

  const CategoryTitle(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: TextCustom(
        text: title,
        fontWeight: FontWeight.bold,
        color: CoreColors.categoryColor,
      ),
    );
  }
}
