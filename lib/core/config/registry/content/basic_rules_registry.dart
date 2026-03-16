import 'package:exemplifica/core/config/buttons_config.dart';
import 'package:exemplifica/core/constants/core_assets_strings.dart';
import 'package:exemplifica/core/constants/core_strings.dart';
import 'package:exemplifica/core/navigation/app_navigator.dart';
import 'package:exemplifica/core/ui/enums/config_buttons_enum.dart';
import 'package:exemplifica/core/ui/enums/math_category_enum.dart';
import 'package:exemplifica/core/ui/widgets/icon_button_custom.dart';
import 'package:exemplifica/core/ui/widgets/svg_icon.dart';
import 'package:exemplifica/features/basic_rules/content/content_list/addition_subtraction_content_list.dart';
import 'package:exemplifica/features/basic_rules/content/content_list/exponents_strings_content_list.dart';
import 'package:exemplifica/features/basic_rules/content/content_list/multiplication_division_content_list.dart';
import 'package:exemplifica/features/basic_rules/content/content_list/parentheses_content_list.dart';
import 'package:exemplifica/features/basic_rules/content/content_list/sign_rules_content_list.dart';
import 'package:flutter/material.dart';

final Map<ConfigButtonsEnum, ButtonsConfig> basicRulesButtons = {
  ConfigButtonsEnum.parentheses: ButtonsConfig(
    category: MathCategory.mathRules,
    icon: SvgIcon(
      CoreAssetsStrings.parentheses,
      size: 55,
    ),
    buttonTitle: CoreStrings.parenthesesTitle,
    vertical: true,
    onTap: (context) {
      AppNavigator.openContentPage(
        context,
        title: CoreStrings.parenthesesTitle,
        content: parenthesesContentList,
        category: MathCategory.mathRules,
        actions: [
          IconButtonCustom(
            icon: Icons.home,
            onPressed: () {
              AppNavigator.openHome(context);
            },
          ),
        ],
      );
    },
  ),
  ConfigButtonsEnum.exponents: ButtonsConfig(
    category: MathCategory.mathRules,
    icon: SvgIcon(
      CoreAssetsStrings.exponent,
      size: 55,
    ),
    buttonTitle: CoreStrings.exponentsTitle,
    vertical: true,
    onTap: (context) {
      AppNavigator.openContentPage(
        context,
        title: CoreStrings.exponentsTitle,
        content: exponentsContentList,
        category: MathCategory.mathRules,
        actions: [
          IconButtonCustom(
            icon: Icons.home,
            onPressed: () {
              AppNavigator.openHome(context);
            },
          ),
        ],
      );
    },
  ),
  ConfigButtonsEnum.multiplicationDivision: ButtonsConfig(
    category: MathCategory.mathRules,
    icon: SvgIcon(
      CoreAssetsStrings.multiplicationDivision,
      size: 55,
    ),
    buttonTitle: CoreStrings.multiplicationDivisionTitle,
    onTap: (context) {
      AppNavigator.openContentPage(
        context,
        title: CoreStrings.multiplicationDivisionTitle,
        content: multiplicationDivisionContentList,
        category: MathCategory.mathRules,
        actions: [
          IconButtonCustom(
            icon: Icons.home,
            onPressed: () {
              AppNavigator.openHome(context);
            },
          ),
        ],
      );
    },
  ),
  ConfigButtonsEnum.additionSubtraction: ButtonsConfig(
    category: MathCategory.mathRules,
    icon: SvgIcon(
      CoreAssetsStrings.additionSubtraction,
      size: 55,
    ),
    buttonTitle: CoreStrings.additionSubtractionTitle,
    onTap: (context) {
      AppNavigator.openContentPage(
        context,
        title: CoreStrings.additionSubtractionTitle,
        content: additionSubtractionContentList,
        category: MathCategory.mathRules,
        actions: [
          IconButtonCustom(
            icon: Icons.home,
            onPressed: () {
              AppNavigator.openHome(context);
            },
          ),
        ],
      );
    },
  ),
  ConfigButtonsEnum.signRules: ButtonsConfig(
    category: MathCategory.mathRules,
    icon: SvgIcon(
      CoreAssetsStrings.signRules,
      size: 55,
    ),
    buttonTitle: CoreStrings.signRulesTitle,
    onTap: (context) {
      AppNavigator.openContentPage(
        context,
        title: CoreStrings.signRulesTitle,
        content: signRulesContentList,
        category: MathCategory.mathRules,
        actions: [
          IconButtonCustom(
            icon: Icons.home,
            onPressed: () {
              AppNavigator.openHome(context);
            },
          ),
        ],
      );
    },
  ),
};