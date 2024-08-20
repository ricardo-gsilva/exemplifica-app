import 'package:exemplifica/controller/controller_juros_compostos.dart';
import 'package:exemplifica/utils/constants/core_fontSize.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/view/atoms/custom_text.dart';
import 'package:exemplifica/view/molecules/calculator_form.dart';
import 'package:exemplifica/view/molecules/response_calculator.dart';
import 'package:flutter/material.dart';

class CalcJurosCompostosTemplate extends StatefulWidget {
  const CalcJurosCompostosTemplate({super.key});

  @override
  State<CalcJurosCompostosTemplate> createState() =>
      _CalcJurosCompostosTemplateState();
}

class _CalcJurosCompostosTemplateState
    extends State<CalcJurosCompostosTemplate> {
  final ConstrollerJurosCompostos jurosCompostos =
      ConstrollerJurosCompostos.instance;

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
              title: CoreStrings.text1_CalcJurosCompostos,
              fontSize: CoreFontSize.h_20,
            ),
            CalculatorForm(
              title: CoreStrings.text2_CalcJurosCompostos,
              controller: [
                jurosCompostos.c,
                jurosCompostos.i,
                jurosCompostos.t,
              ],
              label: ["Capital:", "Taxa:", "Meses:"],
              height: height,
              width: width,
              onTapFirst: (() {
                setState(() {
                  jurosCompostos.verificarCampos();
                });
              }),
              onTapSecond: (() {
                setState(() {
                  jurosCompostos.resetCampos();
                });
              }),
            ),
            Visibility(
              visible: jurosCompostos.visible,
              child: ResponseCalculator(
                response: [jurosCompostos.resultjC, jurosCompostos.resultjC_1],
              ),
            ),            
          ],
        ),
      ),
    );
  }
}
