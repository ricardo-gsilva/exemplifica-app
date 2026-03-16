import 'package:exemplifica/core/math_engine/rule_of_three_math_engine.dart';
import 'package:exemplifica/features/calculators/models/calculator_response.dart';

class RuleOfThreeUseCase {

  final RuleOfThreeMathEngine _ruleOfThreeMathEngine = RuleOfThreeMathEngine();

  CalculatorResponse execute(
    double valor1,
    double valor2,
    double valor3,
  ) {

    final result = _ruleOfThreeMathEngine.calculate(
      valor1,
      valor2,
      valor3,
    );

    return CalculatorResponse(
      result: result["process"] ?? "",
      tip: result["tip"] ?? "",
    );
  }
}