import 'package:exemplifica/controller/controller_fatorial.dart';
import 'package:exemplifica/utils/constants/core_fontSize.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/view/atoms/custom_text.dart';
import 'package:exemplifica/view/molecules/calculator_form.dart';
import 'package:exemplifica/view/molecules/response_calculator.dart';
import 'package:flutter/material.dart';

class CalcFatorialTemplate extends StatefulWidget {
  const CalcFatorialTemplate({super.key});

  @override
  State<CalcFatorialTemplate> createState() => _CalcFatorialTemplateState();
}

class _CalcFatorialTemplateState extends State<CalcFatorialTemplate> {
  final ControllerFatorial fatorial = ControllerFatorial.instance;

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
              title: CoreStrings.text1_CalcFatorial,
              fontSize: CoreFontSize.h_20,
            ),
            CalculatorForm(
              controller: [fatorial.val1],
              label: [CoreStrings.valor],
              height: height,
              width: width,
              onTapFirst: (() {
                setState(() {
                  fatorial.verificarCampos();
                });
              }),
              onTapSecond: (() {
                setState(() {
                  fatorial.resetCampos();
                });
              }),
            ),
            Visibility(
              child: ResponseCalculator(
                response: [fatorial.resultFat, fatorial.resultFinal, fatorial.infoFatorial],
              ),
            ),                
          ],
        ),
      ),
    );
  }
}
