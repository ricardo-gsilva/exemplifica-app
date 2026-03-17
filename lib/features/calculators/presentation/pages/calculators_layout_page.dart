import 'package:exemplifica/core/constants/core_fontSize.dart';
import 'package:exemplifica/core/extensions/context_extensions.dart';
import 'package:exemplifica/core/navigation/app_navigator.dart';
import 'package:exemplifica/core/ui/enums/math_category_enum.dart';
import 'package:exemplifica/core/ui/widgets/scaffold_custom.dart';
import 'package:exemplifica/core/ui/widgets/text_custom.dart';
import 'package:exemplifica/features/calculators/config/calculator_registry.dart';
import 'package:exemplifica/features/calculators/config/calculators_config.dart';
import 'package:exemplifica/features/calculators/controllers/calculators_controller.dart';
import 'package:exemplifica/features/calculators/enums/calculator_layout_enum.dart';
import 'package:exemplifica/features/calculators/enums/calculator_type_enum.dart';
import 'package:exemplifica/core/ui/widgets/icon_button_custom.dart';
import 'package:exemplifica/features/calculators/widgets/calculator_form.dart';
import 'package:exemplifica/features/calculators/widgets/calculator_form_2.dart';
import 'package:exemplifica/features/calculators/widgets/response_calculator.dart';
import 'package:flutter/material.dart';

class CalculatorsLayoutPage extends StatefulWidget {
  final CalculatorEnum calculator;
  final MathCategory category;

  const CalculatorsLayoutPage({
    required this.calculator,
    required this.category,
    super.key,
  });

  @override
  State<CalculatorsLayoutPage> createState() => _CalculatorsLayoutPageState();
}

class _CalculatorsLayoutPageState extends State<CalculatorsLayoutPage> {
  late CalculatorController controller;
  late List<TextEditingController> textControllers;
  late CalculatorConfig calculatorInfo;

  @override
  void initState() {
    super.initState();
    controller = CalculatorController();
    _getConfig();
  }

  void _getConfig() {
    calculatorInfo = calculatorConfigs[widget.calculator]!;
    textControllers = List.generate(
      calculatorInfo.fields,
      (_) => TextEditingController(),
    );
  }

  List<String> _getValues() {
    return textControllers.map((c) => c.text).toList();
  }

  void clear() {
    textControllers.forEach((controller) => controller.clear());
    controller.clear();
  }

  @override
  void dispose() {
    textControllers.forEach((controller) => controller.dispose());
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return ScaffoldCustom(
      category: widget.category,
      titleAppBar: calculatorInfo.title,
      fontSize: 22,
      actions: [
        IconButtonCustom(
          icon: Icons.home,
          onPressed: () {
            AppNavigator.openHome(context);
          },
        )
      ],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 12, right: 12, top: 12, bottom: context.bottomSystemSpace + 20),
            child: ListenableBuilder(
              listenable: controller,
              builder: (_, __) {
                return Column(
                  children: <Widget>[
                    TextCustom(
                      text: calculatorInfo.description,
                      fontSize: CoreFontSize.h_18,
                    ),
                    calculatorInfo.layout == CalculatorLayoutEnum.proportionForm
                        ? CalculatorForm2(
                            category: widget.category,
                            height: height,
                            width: width,
                            controller: textControllers,
                            onTapFirst: () {
                              controller.calcular(type: widget.calculator, values: _getValues());
                            },
                            onTapSecond: () {
                              clear();
                            },
                          )
                        : CalculatorForm(
                            category: widget.category,
                            title: calculatorInfo.formula,
                            controller: textControllers,
                            label: calculatorInfo.labels,
                            height: height,
                            width: width,
                            onTapFirst: () {
                              controller.calcular(type: widget.calculator, values: _getValues());
                            },
                            onTapSecond: () {
                              clear();
                            },
                          ),
                    ResponseCalculator(
                      response: controller.response,
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
