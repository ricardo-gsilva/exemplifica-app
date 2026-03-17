import 'package:exemplifica/core/config/buttons_config.dart';
import 'package:exemplifica/core/navigation/app_routes.dart';
import 'package:exemplifica/core/ui/enums/math_category_enum.dart';
import 'package:exemplifica/core/ui/models/content_model.dart';
import 'package:exemplifica/features/calculators/enums/calculator_type_enum.dart';
import 'package:flutter/material.dart';

class AppNavigator {
  static void openCalculator(
    BuildContext context,
    CalculatorEnum type,
    MathCategory category,
  ) {
    Navigator.pushNamed(
      context,
      AppRoutes.calculator,
      arguments: {
        'type': type,
        'category': category,
      },
    );
  }

  static void openContentPage(
    BuildContext context, {
    required String title,
    required List<ContentModel> content,
    List<Widget>? actions,
    required MathCategory category,
  }) {
    Navigator.pushNamed(
      context,
      AppRoutes.content,
      arguments: {
        'title': title,
        'content': content,
        'actions': actions,
        'category': category,
      },
    );   
  }

  static void openBasicRules(
    BuildContext context,
    ButtonsConfig config,
  ) {
    Navigator.pushNamed(
      context,
      AppRoutes.basicRules,
      arguments: config
    );
  }

  static void openCalculators(
    BuildContext context,
    MathCategory category,
  ) {
    Navigator.pushNamed(
      context,
      AppRoutes.calculators,
      arguments: category,
    );
  }

  static void openHome(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(
      context,
      AppRoutes.home,
      (route) => false,
    );
  }
}
