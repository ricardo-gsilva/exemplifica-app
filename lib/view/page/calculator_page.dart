import 'package:exemplifica/utils/enum_calculator.dart';
import 'package:flutter/material.dart';
import 'package:exemplifica/utils/constants/core_fontSize.dart';
import 'package:exemplifica/view/atoms/custom_icon_button.dart';
import 'package:exemplifica/view/atoms/custom_text.dart';
import 'package:exemplifica/view/molecules/custom_scaffold.dart';
import 'package:exemplifica/view/page/home_page.dart';
import 'package:exemplifica/view/templates/calculator_template.dart';

class CalculatorPage extends StatelessWidget {
  final String descriptionText;
  final String? formulaText;
  final String titleAppBar;
  final CalculatorEnum calculator;
  const CalculatorPage({
    Key? key,
    required this.descriptionText,
    this.formulaText,
    required this.titleAppBar,
    required this.calculator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      titleAppBar: CustomText(
        title: titleAppBar,
        fontSize: CoreFontSize.h_22,
      ),
      leading: true,
      actions: [
        CustomIconButton(
          icon: Icons.home,
          onPressed: () {
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => HomePage()),
                (Route<dynamic> route) => false);
          },
        )
      ],
      body: CalculatorTemplate(
        descriptionText: descriptionText,
        formulaText: formulaText,
        calculator: calculator,
      ),
    );
  }
}
