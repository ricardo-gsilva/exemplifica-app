import 'package:exemplifica/core/config/buttons_config.dart';
import 'package:exemplifica/core/ui/enums/math_category_enum.dart';
import 'package:exemplifica/core/ui/page/content_page.dart';
import 'package:exemplifica/core/ui/models/content_model.dart';
import 'package:flutter/material.dart';
import 'package:exemplifica/features/calculators/enums/calculator_type_enum.dart';
import 'package:exemplifica/features/calculators/presentation/pages/calculators_layout_page.dart';
import 'package:exemplifica/features/calculators/presentation/pages/calculators_page.dart';
import 'package:exemplifica/features/basic_rules/page/basic_rules_page.dart';
import 'package:exemplifica/features/home/page/home_page.dart';
import 'package:exemplifica/features/splash/presentation/pages/splash_page.dart';
import 'app_routes.dart';

class AppGenerateRoute {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splash:
        return MaterialPageRoute(
          builder: (_) => const SplashPage(),
        );

      case AppRoutes.home:
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
        );

      case AppRoutes.content:
        final args = settings.arguments as Map<String, dynamic>;

        final title = args['title'] as String;
        final content = args['content'] as List<ContentModel>;
        final category = args['category'] as MathCategory;
        final actions = args['actions'] as List<Widget>;

        return MaterialPageRoute(
          builder: (_) => ContentPage(
            title: title,
            content: content,
            category: category,
            actions: actions,
          ),
        );

      case AppRoutes.basicRules:
        final buttonsConfig = settings.arguments as ButtonsConfig;
        return MaterialPageRoute(
          builder: (_) => BasicRulesPage(
            buttonsConfig: buttonsConfig,
          ),
        );

      case AppRoutes.calculators:
        final category = settings.arguments as MathCategory;
        return MaterialPageRoute(
          builder: (_) => CalculatorsPage(
            category: category,
          ),
        );

      case AppRoutes.calculator:
        final args = settings.arguments as Map<String, dynamic>;

        final calculator = args['type'] as CalculatorEnum;
        final category = args['category'] as MathCategory;
        return MaterialPageRoute(
          builder: (_) => CalculatorsLayoutPage(
            calculator: calculator,
            category: category,
          ),
        );
    }

    return null;
  }
}
