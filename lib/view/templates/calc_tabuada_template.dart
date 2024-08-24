import 'package:exemplifica/controller/controller_tabuada.dart';
import 'package:exemplifica/utils/constants/core_fontSize.dart';
import 'package:exemplifica/utils/constants/core_keys.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/view/atoms/custom_text.dart';
import 'package:exemplifica/view/molecules/calculator_form.dart';
import 'package:exemplifica/view/molecules/response_calculator.dart';
import 'package:flutter/material.dart';

class CalcTabuadaTemplate extends StatefulWidget {
  const CalcTabuadaTemplate({super.key});

  @override
  State<CalcTabuadaTemplate> createState() => _CalcTabuadaTemplateState();
}

class _CalcTabuadaTemplateState extends State<CalcTabuadaTemplate> {
  final ControllerTabuada tabuada = ControllerTabuada.instance;

  @override
  void initState() {
    tabuada.resetCampos();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      key: Key(CoreKeys.calcTabuadaTemplate),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: <Widget>[
            CustomText(
              title: CoreStrings.text1_CalcTabuada,
              fontSize: CoreFontSize.h_20,
            ),            
            CalculatorForm(
              controller: [tabuada.nTabuada], 
              label: [CoreStrings.valor],
              height: height,
              width: width,
              onTapFirst: (() {
                setState(() {
                  tabuada.verificarCampos();
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
