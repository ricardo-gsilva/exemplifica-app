import 'package:exemplifica/core/math_engine/percentage_math_engine.dart';
import 'package:exemplifica/features/calculators/models/calculator_response.dart';

class PercentageUseCase {

  final PercentageMathEngine _percentageMathEngine = PercentageMathEngine();

  CalculatorResponse execute(double valor1, double valor2) {

    final result = _percentageMathEngine.calculate(valor1, valor2);

    return CalculatorResponse(
      result: result["process"] ?? "",
      tip: result["tip"] ?? "",
    );
  }
}