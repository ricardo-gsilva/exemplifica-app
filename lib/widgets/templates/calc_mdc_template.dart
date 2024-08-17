import 'package:exemplifica/controller/controller_mdc.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/widgets/atoms/custom_text.dart';
import 'package:exemplifica/widgets/molecules/calculator_form.dart';
import 'package:exemplifica/widgets/molecules/response_calculator.dart';
import 'package:flutter/material.dart';

class CalcMdcTemplate extends StatefulWidget {
  const CalcMdcTemplate({super.key});

  @override
  State<CalcMdcTemplate> createState() => _CalcMdcTemplateState();
}

class _CalcMdcTemplateState extends State<CalcMdcTemplate> {
  final ControllerMdc mdc = ControllerMdc.instance;

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
                title: CoreStrings.text1_CalcMdc,
                fontSize: 20,
              ),            
              CalculatorForm(
                controller: [mdc.val1, mdc.val2], 
                label: ["Valor 1:", "Valor 2:"],
                height: height,
                width: width,
                onTapFirst: (() {
                  setState(() {
                    mdc.verificarCampos();
                  });
                }),
                onTapSecond: (() {
                  setState(() {
                    mdc.resetCampos();
                  });
                }),
              ),            
              Visibility(
                visible: mdc.visible,
                child: ResponseCalculator(
                  response: [mdc.resultMdc, mdc.resultMdc1, mdc.resultMdc2],
                ),
              ),              
            ],
          ),
        ),
      );
  }
}