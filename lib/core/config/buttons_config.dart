import 'package:exemplifica/core/ui/enums/math_category_enum.dart';
import 'package:flutter/material.dart';

class ButtonsConfig {
  final void Function(BuildContext context) onTap;
  final MathCategory category;
  final String? iconPath;
  final double? iconSize;
  final String buttonTitle;
  final bool vertical;
  final Widget icon;

  const ButtonsConfig({
    required this.onTap,
    required this.category,
    this.iconPath,
    this.iconSize,
    required this.buttonTitle,
    this.vertical = false,
    required this.icon,
  });
}