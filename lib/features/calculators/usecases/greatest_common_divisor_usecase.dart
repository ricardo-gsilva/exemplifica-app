import 'package:exemplifica/core/math_engine/greatest_common_divisor_math_engine.dart';
import 'package:exemplifica/features/calculators/models/calculator_response.dart';

class GreatestCommonDivisorUseCase {

  final GreatestCommonDivisorMathEngine _greatestCommonDivisor = GreatestCommonDivisorMathEngine();

  CalculatorResponse execute(int a, int b) {

    final result = _greatestCommonDivisor.calculate(a, b);

    return CalculatorResponse(
      result: result["process"] ?? "",
      tip: result["tip"] ?? "",
    );
  }
}