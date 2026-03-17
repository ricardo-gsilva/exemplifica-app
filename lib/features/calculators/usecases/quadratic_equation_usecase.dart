import 'package:exemplifica/core/math_engine/quadratic_equation_math_engine.dart';
import 'package:exemplifica/features/calculators/models/calculator_response.dart';

class QuadraticEquationUseCase {

  final QuadraticEquationMathEngine _quadraticEquationMathEngine = QuadraticEquationMathEngine();

  CalculatorResponse execute(double a, double b, double c) {

    final result = _quadraticEquationMathEngine.calculate(a, b, c);

    return CalculatorResponse(
      result: result["process"] ?? "",
      tip: result["tip"] ?? "",
    );
  }
}