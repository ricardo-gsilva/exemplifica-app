import 'package:exemplifica/features/calculators/enums/calculator_layout_enum.dart';

class CalculatorConfig {
  final int fields;
  final List<String> labels;
  final String title;
  final String description;
  final String? formula;
  final CalculatorLayoutEnum layout;

  const CalculatorConfig({
    required this.fields,
    required this.labels,
    required this.title,
    required this.description,
    this.formula,
    this.layout = CalculatorLayoutEnum.defaultForm,
  });
}