import 'package:exemplifica/core/math_engine/linear_equation_math_engine.dart';
import 'package:exemplifica/features/calculators/models/calculator_response.dart';

class LinearEquationUseCase {

  final LinearEquationMathEngine _linearEquationMathEngine = LinearEquationMathEngine();

  CalculatorResponse execute(double a, double b) {
    final result = _linearEquationMathEngine.calculate(a, b);

    return CalculatorResponse(
      result: result["process"] ?? "",
      tip: result["tip"] ?? "",
    );
  }
}