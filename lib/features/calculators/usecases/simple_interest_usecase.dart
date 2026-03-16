import 'package:exemplifica/core/math_engine/simple_interest_math_engine.dart';
import 'package:exemplifica/features/calculators/models/calculator_response.dart';

class SimpleInterestUseCase {

  final SimpleInterestMathEngine _simpleInterestMathEngine = SimpleInterestMathEngine();

  CalculatorResponse execute({
    double? capital,
    double? taxa,
    double? tempo,
    double? juros,
  }) {

    final result = _simpleInterestMathEngine.calculate(
      capital: capital,
      taxa: taxa,
      tempo: tempo,
      juros: juros,
    );

    return CalculatorResponse(
      result: result["process"] ?? "",
      tip: result["tip"] ?? "",
    );
  }
}