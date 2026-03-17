import 'package:exemplifica/core/config/buttons_config.dart';
import 'package:exemplifica/core/config/registry/learning_buttons_registry.dart';
import 'package:exemplifica/core/extensions/context_extensions.dart';
import 'package:exemplifica/core/ui/enums/config_buttons_enum.dart';
import 'package:exemplifica/core/ui/widgets/card_custom.dart';
import 'package:exemplifica/core/ui/widgets/buttons_grid.dart';
import 'package:exemplifica/core/ui/widgets/category_title.dart';
import 'package:exemplifica/core/ui/widgets/scaffold_custom.dart';
import 'package:exemplifica/core/constants/core_strings.dart';
import 'package:flutter/material.dart';

class BasicRulesPage extends StatefulWidget {
  final ButtonsConfig buttonsConfig;

  const BasicRulesPage({
    super.key,
    required this.buttonsConfig,
  });

  @override
  State<BasicRulesPage> createState() => _BasicRulesPageState();
}

class _BasicRulesPageState extends State<BasicRulesPage> {
  

  @override
  void initState() {    
    super.initState();
    
  }

  
  @override
  Widget build(BuildContext context) {
    return ScaffoldCustom(
      category: widget.buttonsConfig.category,
      titleAppBar: CoreStrings.basicRulesTitle,
      fontSize: 22,
      body: Padding(
        padding: EdgeInsets.only(left: 12, right: 12, bottom: context.bottomSystemSpace + 20, top: 2),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12, bottom: 0, top: 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CategoryTitle(CoreStrings.firstRule),
                  CategoryTitle(CoreStrings.secondRule),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: CardCustom(
                    config: learningButtonsConfig[ConfigButtonsEnum.parentheses]!,
                  ),
                ),
                Expanded(
                  child: CardCustom(
                    config: learningButtonsConfig[ConfigButtonsEnum.exponents]!,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ButtonsGrid(
                  spacing: 12,
                  aspectRatio: 2.7,
                  crossAxisCount: 1,
                  categoryTitle: [CoreStrings.thirdRule, CoreStrings.fourthRule, CoreStrings.fifthRule],
                  buttons: [
                    ConfigButtonsEnum.multiplicationDivision,
                    ConfigButtonsEnum.additionSubtraction,
                    ConfigButtonsEnum.signRules,
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