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
import 'package:exemplifica/features/home/content/content_list/compound_interest_content_list.dart';
import 'package:exemplifica/features/home/content/content_list/percentage_content_list.dart';
import 'package:exemplifica/features/home/content/content_list/rule_of_three_content_list.dart';
import 'package:exemplifica/features/home/content/content_list/simple_interest_content_list.dart';

final Map<ConfigButtonsEnum, ButtonsConfig> financeButtons = {
  ConfigButtonsEnum.simpleInterest: ButtonsConfig(
    category: MathCategory.finance,
    icon: SvgIcon(
      CoreAssetsStrings.simpleInterest,
      size: 50,
    ),
    buttonTitle: CoreStrings.simpleInterestTitle,
    onTap: (context) {
      AppNavigator.openContentPage(
        context,
        title: CoreStrings.simpleInterestAppBarTitle,
        content: simpleInterestContentList,
        category: MathCategory.finance,
        actions: [
          IconButtonCustom(
            icon: Person.calc,
            onPressed: () {
              AppNavigator.openCalculator(
                context,
                CalculatorEnum.simpleInterest,
                MathCategory.finance,
              );
            },
          ),
        ],
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
      AppNavigator.openContentPage(
        context,
        title: CoreStrings.compoundInterestAppBarTitle,
        content: compoundInterestContentList,
        category: MathCategory.finance,
        actions: [
          IconButtonCustom(
            icon: Person.calc,
            onPressed: () {
              AppNavigator.openCalculator(
                context,
                CalculatorEnum.compoundInterest,
                MathCategory.finance,
              );
            },
          ),
        ],
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
      AppNavigator.openContentPage(
        context,
        title: CoreStrings.percentageTitle,
        content: percentageContentList,
        category: MathCategory.finance,
        actions: [
          IconButtonCustom(
            icon: Person.calc,
            onPressed: () {
              AppNavigator.openCalculator(
                context,
                CalculatorEnum.percentage,
                MathCategory.finance,
              );
            },
          ),
        ],
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
      AppNavigator.openContentPage(
        context,
        title: CoreStrings.ruleOfThreeTitle,
        content: ruleOfThreeContentList,
        category: MathCategory.finance,
        actions: [
          IconButtonCustom(
            icon: Person.calc,
            onPressed: () {
              AppNavigator.openCalculator(
                context,
                CalculatorEnum.ruleOfThree,
                MathCategory.finance,
              );
            },
          ),
        ],
      );
    },
  ),
};