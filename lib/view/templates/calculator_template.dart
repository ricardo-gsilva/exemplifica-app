import 'package:exemplifica/controller/controller_instance.dart';
import 'package:exemplifica/utils/enum_calculator.dart';
import 'package:exemplifica/view/molecules/calculator_form_2.dart';
import 'package:flutter/material.dart';
import 'package:exemplifica/utils/constants/core_fontSize.dart';
import 'package:exemplifica/utils/constants/core_keys.dart';
import 'package:exemplifica/view/atoms/custom_text.dart';
import 'package:exemplifica/view/molecules/calculator_form.dart';
import 'package:exemplifica/view/molecules/response_calculator.dart';

class CalculatorTemplate extends StatefulWidget {
  final String descriptionText;
  final String? formulaText;
  final CalculatorEnum calculator;
  const CalculatorTemplate({
    Key? key,
    required this.descriptionText,
    this.formulaText,
    required this.calculator,
  }) : super(key: key);

  @override
  State<CalculatorTemplate> createState() => _CalculatorTemplateState();
}

class _CalculatorTemplateState extends State<CalculatorTemplate> {
  ControllerInstance instances = ControllerInstance.instance;  
  var instance;

  @override
  void initState() {
    instance = instances.getInstance(widget.calculator);
    instance.resetCampos();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      key: Key(CoreKeys.calculatorTemplate),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                CustomText(
                  title: widget.descriptionText,
                  fontSize: CoreFontSize.h_18,
                ),
                widget.calculator == CalculatorEnum.porcentagem 
                || widget.calculator == CalculatorEnum.regraDe3?
                  CalculatorForm2( 
                    height: height, 
                    width: width,
                    controller: instance.controllerList(),
                    onTapFirst: (){
                      setState(() {
                        instance.verificarCampos();
                      });
                    },
                    onTapSecond: (){
                      setState(() {
                        instance.resetCampos();
                      });
                    },
                  ) : CalculatorForm(
                  title: widget.formulaText,
                  controller: instance.controllerList(),
                  label: instance.labelList(),
                  height: height,
                  width: width,
                  onTapFirst: (){
                    setState(() {
                      instance.verificarCampos();
                    });
                  },
                  onTapSecond: (){
                    setState(() {
                      instance.resetCampos();
                    });
                  },
                ),
                ResponseCalculator(
                  response: instance.responseList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
