import 'package:exemplifica/core/config/registry/calculator_button_registry.dart';
import 'package:exemplifica/core/constants/core_strings.dart';
import 'package:exemplifica/core/extensions/context_extensions.dart';
import 'package:exemplifica/core/ui/enums/config_buttons_enum.dart';
import 'package:exemplifica/core/ui/enums/math_category_enum.dart';
import 'package:exemplifica/core/ui/widgets/buttons_grid.dart';
import 'package:exemplifica/core/ui/widgets/category_title.dart';
import 'package:exemplifica/core/ui/widgets/scaffold_custom.dart';
import 'package:flutter/material.dart';

class CalculatorsPage extends StatelessWidget {
  final MathCategory category;

  const CalculatorsPage({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return ScaffoldCustom(
      category: category,
      titleAppBar: CoreStrings.calculatorsTitle,
      fontSize: 22,
      body: Padding(
        padding: EdgeInsets.only(left: 10, right: 10, bottom: context.bottomSystemSpace + 20),
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CategoryTitle(CoreStrings.algebraTitle),
                ButtonsGrid(
                  spacing: 12,
                  aspectRatio: 1.2,
                  registry: calculatorsButtonsConfig,
                  buttons: [
                    ConfigButtonsEnum.linearEquation,
                    ConfigButtonsEnum.quadraticEquation,
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CategoryTitle(CoreStrings.arithmeticTitle),
                ButtonsGrid(
                  spacing: 12,
                  aspectRatio: 2,
                  registry: calculatorsButtonsConfig,
                  buttons: [
                    ConfigButtonsEnum.multiplicationTable,
                    ConfigButtonsEnum.factorial,
                    ConfigButtonsEnum.lcm,
                    ConfigButtonsEnum.gcd,
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CategoryTitle(CoreStrings.financialMathTitle),
                ButtonsGrid(                  
                  spacing: 12,
                  aspectRatio: 2,
                  registry: calculatorsButtonsConfig,
                  buttons: [
                    ConfigButtonsEnum.simpleInterest,
                    ConfigButtonsEnum.compoundInterest,
                    ConfigButtonsEnum.percentage,
                    ConfigButtonsEnum.ruleOfThree,
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
