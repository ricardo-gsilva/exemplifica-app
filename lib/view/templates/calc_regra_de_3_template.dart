import 'package:exemplifica/controller/controller_regra_de_3.dart';
import 'package:exemplifica/utils/constants/core_fontSize.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/view/atoms/custom_text.dart';
import 'package:exemplifica/view/molecules/calculator_form_2.dart';
import 'package:exemplifica/view/molecules/response_calculator.dart';
import 'package:flutter/material.dart';

class CalcRegraDe3Template extends StatefulWidget {
  const CalcRegraDe3Template({super.key});

  @override
  State<CalcRegraDe3Template> createState() => _CalcRegraDe3TemplateState();
}

class _CalcRegraDe3TemplateState extends State<CalcRegraDe3Template> {
  final ControllerRegraDe3 regraDe3 = ControllerRegraDe3.instance;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: <Widget>[
            CustomText(
              title: CoreStrings.text1_CalcRegraDe3,
              fontSize: CoreFontSize.h_20,
            ),
            CalculatorForm2(
              height: height,
              width: width,
              controller: [regraDe3.val1, regraDe3.val2, regraDe3.val3],
              onTapFirst: (() {
                setState(() {
                  regraDe3.verificarCampos();
                });
              }),
              onTapSecond: (() {
                setState(() {
                  regraDe3.resetCampos();
                });
              }),
            ),
            Visibility(
              visible: regraDe3.visible,
              child: ResponseCalculator(
                response: [regraDe3.resultRegra3],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
