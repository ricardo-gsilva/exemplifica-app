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
import 'package:exemplifica/features/home/content/content_list/factorial_content_list.dart';
import 'package:exemplifica/features/home/content/content_list/greatest_common_divisor_content_list.dart';
import 'package:exemplifica/features/home/content/content_list/least_common_multiple_content_list.dart';
import 'package:exemplifica/features/home/content/content_list/multiplication_table_content_list.dart';

final Map<ConfigButtonsEnum, ButtonsConfig> arithmeticButtons = {
  ConfigButtonsEnum.multiplicationTable: ButtonsConfig(
    category: MathCategory.arithmetic,
    icon: SvgIcon(
      CoreAssetsStrings.multiplicationTable,
      size: 50,
    ),
    buttonTitle: CoreStrings.multiplicationTableTitle,
    onTap: (context) {
      AppNavigator.openContentPage(
        context,
        title: CoreStrings.multiplicationTableTitle,
        content: multiplicationTableContentList,
        category: MathCategory.arithmetic,
        actions: [
          IconButtonCustom(
            icon: Person.calc,
            onPressed: () {
              AppNavigator.openCalculator(
                context,
                CalculatorEnum.table,
                MathCategory.arithmetic,
              );
            },
          ),
        ],
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
      AppNavigator.openContentPage(
        context,
        title: CoreStrings.factorialTitle,
        content: factorialContentList,
        category: MathCategory.arithmetic,
        actions: [
          IconButtonCustom(
            icon: Person.calc,
            onPressed: () {
              AppNavigator.openCalculator(
                context,
                CalculatorEnum.factorial,
                MathCategory.arithmetic,
              );
            },
          ),
        ],
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
      AppNavigator.openContentPage(
        context,
        title: CoreStrings.lcmTitle,
        content: lcmContentList,
        category: MathCategory.arithmetic,
        actions: [
          IconButtonCustom(
            icon: Person.calc,
            onPressed: () {
              AppNavigator.openCalculator(
                context,
                CalculatorEnum.mmc,
                MathCategory.arithmetic,
              );
            },
          ),
        ],
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
      AppNavigator.openContentPage(
        context,
        title: CoreStrings.gcdTitle,
        content: gmcContentList,
        category: MathCategory.arithmetic,
        actions: [
          IconButtonCustom(
            icon: Person.calc,
            onPressed: () {
              AppNavigator.openCalculator(
                context,
                CalculatorEnum.mdc,
                MathCategory.arithmetic,
              );
            },
          ),
        ],
      );
    },
  ),
};