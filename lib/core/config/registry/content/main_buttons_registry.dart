import 'package:exemplifica/core/config/buttons_config.dart';
import 'package:exemplifica/core/config/registry/learning_buttons_registry.dart';
import 'package:exemplifica/core/constants/core_strings.dart';
import 'package:exemplifica/core/navigation/app_navigator.dart';
import 'package:exemplifica/core/ui/enums/config_buttons_enum.dart';
import 'package:exemplifica/core/ui/enums/math_category_enum.dart';
import 'package:exemplifica/core/ui/icons/person_icons.dart';
import 'package:flutter/material.dart';

final Map<ConfigButtonsEnum, ButtonsConfig> mainButtons = {
  ConfigButtonsEnum.calculators: ButtonsConfig(
    
    category: MathCategory.calculators,
    buttonTitle: CoreStrings.calculatorsTitle,
    icon: Icon(Person.calc, size: 40),
    vertical: true,
    onTap: (context) {
      AppNavigator.openCalculators(context, MathCategory.calculators);
    },
  ),
  ConfigButtonsEnum.basicRules: ButtonsConfig(
    category: MathCategory.mathRules,
    buttonTitle: CoreStrings.basicRulesTitle,
    icon: Icon(Person.book, size: 40),
    vertical: true,
    onTap: (context) {
      AppNavigator.openBasicRules(context, learningButtonsConfig[ConfigButtonsEnum.basicRules]!);
    },
  ),
};