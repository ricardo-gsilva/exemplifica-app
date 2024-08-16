import 'package:exemplifica/controller/controller_tabuada.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/widgets/atoms/custom_text.dart';
import 'package:exemplifica/widgets/molecules/calculator_form.dart';
import 'package:exemplifica/widgets/molecules/response_calculator.dart';
import 'package:flutter/material.dart';

class CalcTabuadaTemplate extends StatefulWidget {
  const CalcTabuadaTemplate({super.key});

  @override
  State<CalcTabuadaTemplate> createState() => _CalcTabuadaTemplateState();
}

class _CalcTabuadaTemplateState extends State<CalcTabuadaTemplate> {
  final ControllerTabuada tabuada = ControllerTabuada.instance;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.35;
    double height = MediaQuery.of(context).size.height * 0.05;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: <Widget>[
            CustomText(
              title: CoreStrings.text1_CalcTabuada,
              fontSize: 20,
            ),            
            CalculatorForm(
              controller: [tabuada.nTabuada], 
              label: ["Valor:"],
              height: height,
              width: width,
              onTapFirst: (() {
                setState(() {
                  tabuada.verificarCampo();
                });
              }),
              onTapSecond: (() {
                setState(() {
                  tabuada.resetCampos();
                });
              }),
            ),            
            Visibility(
              visible: tabuada.visible,
              child: ResponseCalculator(
                response: [tabuada.infoText, tabuada.dica],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
