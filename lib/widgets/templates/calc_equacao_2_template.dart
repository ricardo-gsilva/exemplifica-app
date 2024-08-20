import 'package:exemplifica/controller/controller_equacao_2.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/widgets/molecules/calculator_form.dart';
import 'package:exemplifica/widgets/molecules/response_calculator.dart';
import 'package:flutter/material.dart';

class CalcEquacao2Template extends StatefulWidget {
  const CalcEquacao2Template({super.key});

  @override
  State<CalcEquacao2Template> createState() => _CalcEquacao2TemplateState();
}

class _CalcEquacao2TemplateState extends State<CalcEquacao2Template> {
  final ControllerEquacao2 equacao2 = ControllerEquacao2.instance;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: <Widget>[
              Text(
                CoreStrings.text1_CalcEquacao2,
                style: TextStyle(fontSize: 18.0),
              ),
              CalculatorForm(
                title: CoreStrings.text2_CalcEquacao2,
                controller: [equacao2.val1, equacao2.val2, equacao2.val3],
                label: ["a:", "b:", "c:"],
                height: height,
                width: width,
                onTapFirst: () {
                  setState(() {
                    equacao2.verificarCampos();
                  });
                },
                onTapSecond: () {
                  setState(() {
                    equacao2.resetCampos();
                  });
                },
              ),
              Visibility(
                visible: equacao2.visible,
                child: ResponseCalculator(
                  response: [
                    equacao2.resultEq2,
                    equacao2.resultEq2_1,
                    equacao2.resultEq2_2,
                    equacao2.resultEq2_3,
                    equacao2.resultEq2_4,
                  ],
                ),
              ),              
            ],
          ),
        ),
      ),
    );
  }
}
