import 'package:exemplifica/core/math_engine/factorial_math_engine.dart';
import 'package:exemplifica/features/calculators/models/calculator_response.dart';

class FactorialUseCase {
  
  final FactorialMathEngine _factorialMathEngine = FactorialMathEngine();

  CalculatorResponse execute(int value) {

    final result = _factorialMathEngine.calculate(value);

    return CalculatorResponse(
      result: "${result["process"]}\n${result["result"]}",
      tip: result["info"] ?? "",
    );
  }
}