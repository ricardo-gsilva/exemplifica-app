import 'package:exemplifica/core/math_engine/compound_interest_math_engine.dart';
import 'package:exemplifica/features/calculators/models/calculator_response.dart';

class CompoundInterestUseCase {

  final CompoundInterestMathEngine _compoundInterestMathEngine = CompoundInterestMathEngine();

  CalculatorResponse execute({
    required double capital,
    required double taxa,
    required double meses,
  }) {

    final result = _compoundInterestMathEngine.calculate(
      capital: capital,
      taxa: taxa,
      meses: meses,
    );

    return CalculatorResponse(
      result: result["process"] ?? "",
      tip: result["tip"] ?? "",
    );
  }
}