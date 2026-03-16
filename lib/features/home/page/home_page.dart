import 'package:exemplifica/core/constants/core_strings.dart';
import 'package:exemplifica/core/extensions/context_extensions.dart';
import 'package:exemplifica/core/ui/enums/config_buttons_enum.dart';
import 'package:exemplifica/core/ui/enums/math_category_enum.dart';
import 'package:exemplifica/core/ui/widgets/buttons_grid.dart';
import 'package:exemplifica/core/ui/widgets/category_title.dart';
import 'package:exemplifica/core/ui/widgets/scaffold_custom.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override

  Widget build(BuildContext context) {
    return ScaffoldCustom(
      category: MathCategory.defaultApp,
      leading: false,
      body: Padding(
        padding: EdgeInsets.only(left: 10, right: 10, bottom: context.bottomSystemSpace + 20, top: 20),
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ButtonsGrid(
                  spacing: 12,
                  aspectRatio: 1.2,
                  crossAxisCount: 2,
                  buttons: [
                    ConfigButtonsEnum.calculators,
                    ConfigButtonsEnum.basicRules,
                  ],
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CategoryTitle(CoreStrings.algebraTitle),
                      ButtonsGrid(spacing: 12, aspectRatio: 1.3, buttons: [
                        ConfigButtonsEnum.linearEquation,
                        ConfigButtonsEnum.quadraticEquation,
                      ]),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CategoryTitle(CoreStrings.arithmeticTitle),
                      ButtonsGrid(spacing: 12, aspectRatio: 2, buttons: [
                        ConfigButtonsEnum.multiplicationTable,
                        ConfigButtonsEnum.factorial,
                        ConfigButtonsEnum.lcm,
                        ConfigButtonsEnum.gcd,
                      ]),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CategoryTitle(CoreStrings.financialMathTitle),
                      ButtonsGrid(spacing: 12, aspectRatio: 2, buttons: [
                        ConfigButtonsEnum.simpleInterest,
                        ConfigButtonsEnum.compoundInterest,
                        ConfigButtonsEnum.percentage,
                        ConfigButtonsEnum.ruleOfThree,
                      ]),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}