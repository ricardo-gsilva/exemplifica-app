import 'package:exemplifica/core/math_engine/least_common_multiple_math_engine.dart';
import 'package:exemplifica/features/calculators/models/calculator_response.dart';

class LeastCommonMultipleUsecase {

  final LeastCommonMultipleMathEngine _leastCommonMultipleMathEngine = LeastCommonMultipleMathEngine();

  CalculatorResponse execute(int a, int b) {

    final result = _leastCommonMultipleMathEngine.calculate(a, b);

    return CalculatorResponse(
      result: result["process"] ?? "",
      tip: result["tip"] ?? "",
    );
  }
}