import 'package:exemplifica/core/config/buttons_config.dart';
import 'package:exemplifica/core/constants/core_assets_strings.dart';
import 'package:exemplifica/core/constants/core_strings.dart';
import 'package:exemplifica/core/navigation/app_navigator.dart';
import 'package:exemplifica/core/ui/enums/config_buttons_enum.dart';
import 'package:exemplifica/core/ui/enums/math_category_enum.dart';
import 'package:exemplifica/core/ui/widgets/svg_icon.dart';
import 'package:exemplifica/features/calculators/enums/calculator_type_enum.dart';

final Map<ConfigButtonsEnum, ButtonsConfig> calculatorsButtons = {
  ConfigButtonsEnum.linearEquation: ButtonsConfig(
    category: MathCategory.algebra,
    icon: SvgIcon(
      CoreAssetsStrings.linearEquation,
      size: 55,
    ),
    buttonTitle: CoreStrings.linearEquationTitle,
    vertical: true,
    onTap: (context) {
      AppNavigator.openCalculator(
        context,
        CalculatorEnum.linearEquation,
        MathCategory.algebra,
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
      AppNavigator.openCalculator(
        context,
        CalculatorEnum.quadraticEquation,
        MathCategory.algebra,
      );
    },
  ),
  ConfigButtonsEnum.multiplicationTable: ButtonsConfig(
    category: MathCategory.arithmetic,
    icon: SvgIcon(
      CoreAssetsStrings.multiplicationTable,
      size: 50,
    ),
    buttonTitle: CoreStrings.multiplicationTableTitle,
    onTap: (context) {
      AppNavigator.openCalculator(
        context,
        CalculatorEnum.table,
        MathCategory.arithmetic,
      );
    },
  ),
  ConfigButtonsEnum.factorial: ButtonsConfig(
    category: MathCategory.arithmetic,
    icon: SvgIcon(
      CoreAssetsStrings.factorial,
      size: 35,
    ),
    buttonTitle: CoreStrings.factorialTitle,
    onTap: (context) {
      AppNavigator.openCalculator(
        context,
        CalculatorEnum.factorial,
        MathCategory.arithmetic,
      );
    },
  ),
  ConfigButtonsEnum.lcm: ButtonsConfig(
    category: MathCategory.arithmetic,
    icon: SvgIcon(
      CoreAssetsStrings.lcm,
      size: 60,
    ),
    buttonTitle: CoreStrings.lcmTitle,
    onTap: (context) {
      AppNavigator.openCalculator(
        context,
        CalculatorEnum.mmc,
        MathCategory.arithmetic,
      );
    },
  ),
  ConfigButtonsEnum.gcd: ButtonsConfig(
    category: MathCategory.arithmetic,
    icon: SvgIcon(
      CoreAssetsStrings.gcd,
      size: 60,
    ),
    buttonTitle: CoreStrings.gcdTitle,
    onTap: (context) {
      AppNavigator.openCalculator(
        context,
        CalculatorEnum.mdc,
        MathCategory.arithmetic,
      );
    },
  ),
  ConfigButtonsEnum.simpleInterest: ButtonsConfig(
    category: MathCategory.finance,
    icon: SvgIcon(
      CoreAssetsStrings.simpleInterest,
      size: 50,
    ),
    buttonTitle: CoreStrings.simpleInterestTitle,
    onTap: (context) {
      AppNavigator.openCalculator(
        context,
        CalculatorEnum.simpleInterest,
        MathCategory.finance,
      );
    },
  ),
  ConfigButtonsEnum.compoundInterest: ButtonsConfig(
    category: MathCategory.finance,
    icon: SvgIcon(
      CoreAssetsStrings.compoundInterest,
      size: 50,
    ),
    buttonTitle: CoreStrings.compoundInterestTitle,
    onTap: (context) {
      AppNavigator.openCalculator(
        context,
        CalculatorEnum.compoundInterest,
        MathCategory.finance,
      );
    },
  ),
  ConfigButtonsEnum.percentage: ButtonsConfig(
    category: MathCategory.finance,
    icon: SvgIcon(
      CoreAssetsStrings.percentage,
      size: 40,
    ),
    buttonTitle: CoreStrings.percentageTitle,
    onTap: (context) {
      AppNavigator.openCalculator(
        context,
        CalculatorEnum.percentage,
        MathCategory.finance,
      );
    },
  ),
  ConfigButtonsEnum.ruleOfThree: ButtonsConfig(
    category: MathCategory.finance,
    icon: SvgIcon(
      CoreAssetsStrings.ruleOfThree,
      size: 55,
    ),
    buttonTitle: CoreStrings.ruleOfThreeTitle,
    onTap: (context) {
      AppNavigator.openCalculator(
        context,
        CalculatorEnum.ruleOfThree,
        MathCategory.finance,
      );
    },
  ),
};
