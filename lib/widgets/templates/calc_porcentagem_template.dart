import 'package:exemplifica/controller/controller_porcentagem.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/widgets/atoms/custom_text.dart';
import 'package:exemplifica/widgets/molecules/calculator_form_2.dart';
import 'package:exemplifica/widgets/molecules/response_calculator.dart';
import 'package:flutter/material.dart';

class CalcPorcentagemTemplate extends StatefulWidget {
  const CalcPorcentagemTemplate({super.key});

  @override
  State<CalcPorcentagemTemplate> createState() =>
      _CalcPorcentagemTemplateState();
}

class _CalcPorcentagemTemplateState extends State<CalcPorcentagemTemplate> {
  final ControllerPorcentagem porcentagem = ControllerPorcentagem.instance;

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
              title: CoreStrings.text1_CalcPorcentagem,
              fontSize: 20,
            ),  
            CalculatorForm2( 
              height: height, 
              width: width,
              controller: [porcentagem.val1, porcentagem.val2],
              label: ["100%", "X"],
              onTapFirst: (() {
                setState(() {
                  porcentagem.verificarCampos();
                });
              }),
              onTapSecond: (() {
                setState(() {
                  porcentagem.resetCampos();
                });
              }),
            ),           
            Visibility(
              visible: porcentagem.visible,
              child: ResponseCalculator(
                response: [porcentagem.resultPorcent],
              ),
            ),           
          ],
        ),
      ),
    );
  }
}
