import 'package:exemplifica/core/constants/core_colors.dart';
import 'package:exemplifica/core/ui/enums/math_category_enum.dart';
import 'package:flutter/material.dart';

extension MathCategoryColor on MathCategory {
  MaterialColor? get color {
    switch (this) {
      case MathCategory.algebra:
        return CoreColors.algebra;

      case MathCategory.arithmetic:
        return CoreColors.arithmetic;

      case MathCategory.finance:
        return CoreColors.finance;
      case MathCategory.mathRules:
        return CoreColors.mathRules;
      case MathCategory.calculators:
        return CoreColors.calculators;
      default:
        return CoreColors.defaultColor;
    }
  }
}