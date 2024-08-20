import 'package:exemplifica/controller/controller_porcentagem.dart';
import 'package:exemplifica/utils/constants/core_fontSize.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/view/atoms/custom_text.dart';
import 'package:exemplifica/view/molecules/calculator_form_2.dart';
import 'package:exemplifica/view/molecules/response_calculator.dart';
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
  void initState() {
    porcentagem.resetCampos();
    super.initState();
  }

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
              fontSize: CoreFontSize.h_20,
            ),  
            CalculatorForm2( 
              height: height, 
              width: width,
              controller: [porcentagem.val1, porcentagem.val2],
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
