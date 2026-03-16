import 'package:exemplifica/core/config/buttons_config.dart';
import 'package:exemplifica/core/constants/core_assets_strings.dart';
import 'package:exemplifica/core/constants/core_strings.dart';
import 'package:exemplifica/core/navigation/app_navigator.dart';
import 'package:exemplifica/core/ui/enums/config_buttons_enum.dart';
import 'package:exemplifica/core/ui/enums/math_category_enum.dart';
import 'package:exemplifica/core/ui/icons/person_icons.dart';
import 'package:exemplifica/core/ui/widgets/icon_button_custom.dart';
import 'package:exemplifica/core/ui/widgets/svg_icon.dart';
import 'package:exemplifica/features/calculators/enums/calculator_type_enum.dart';
import 'package:exemplifica/features/home/content/content_list/linear_equation_content_list.dart';
import 'package:exemplifica/features/home/content/content_list/quadratic_equation_content_list.dart';

final Map<ConfigButtonsEnum, ButtonsConfig> algebraButtons = {
  ConfigButtonsEnum.linearEquation: ButtonsConfig(
    category: MathCategory.algebra,
    icon: SvgIcon(
      CoreAssetsStrings.linearEquation,
      size: 55,
    ),
    buttonTitle: CoreStrings.linearEquationTitle,
    vertical: true,
    onTap: (context) {
      AppNavigator.openContentPage(
        context,
        title: CoreStrings.linearEquationTitle,
        content: linearEquationContentList,
        category: MathCategory.algebra,
        actions: [
          IconButtonCustom(
            icon: Person.calc,
            onPressed: () {
              AppNavigator.openCalculator(
                context,
                CalculatorEnum.linearEquation,
                MathCategory.algebra,
              );
            },
          ),
        ],
      );
    },
  ),
  ConfigButtonsEnum.quadraticEquation: ButtonsConfig(
    category: MathCategory.algebra,
    icon: SvgIcon(
      CoreAssetsStrings.quadraticEquation,
      size: 55,
    ),
    buttonTitle: CoreStrings.quadraticEquationTitle,
    vertical: true,
    onTap: (context) {
      AppNavigator.openContentPage(
        context,
        title: CoreStrings.quadraticEquationTitle,
        content: quadraticEquationContentList,
        category: MathCategory.algebra,
        actions: [
          IconButtonCustom(
            icon: Person.calc,
            onPressed: () {
              AppNavigator.openCalculator(
                context,
                CalculatorEnum.quadraticEquation,
                MathCategory.algebra,
              );
            },
          ),
        ],
      );
    },
  ),
};