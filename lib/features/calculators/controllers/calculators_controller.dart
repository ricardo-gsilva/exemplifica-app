import 'package:exemplifica/core/constants/core_strings.dart';
import 'package:exemplifica/features/calculators/enums/calculator_type_enum.dart';
import 'package:exemplifica/features/calculators/models/calculator_response.dart';
import 'package:exemplifica/features/calculators/usecases/compound_interest_usecase.dart';
import 'package:exemplifica/features/calculators/usecases/factorial_usecase.dart';
import 'package:exemplifica/features/calculators/usecases/linear_equation_usecase.dart';
import 'package:exemplifica/features/calculators/usecases/greatest_common_divisor_usecase.dart';
import 'package:exemplifica/features/calculators/usecases/least_common_multiple_usecase.dart';
import 'package:exemplifica/features/calculators/usecases/percentage_usecase.dart';
import 'package:exemplifica/features/calculators/usecases/quadratic_equation_usecase.dart';
import 'package:exemplifica/features/calculators/usecases/rule_of_three_usecase.dart';
import 'package:exemplifica/features/calculators/usecases/simple_interest_usecase.dart';
import 'package:exemplifica/features/calculators/usecases/multiplication_table_usecase.dart';
import 'package:flutter/material.dart';

class CalculatorController extends ChangeNotifier {
  final MultiplicationTableUsecase _multiplicationTableUsecase = MultiplicationTableUsecase();
  final LeastCommonMultipleUsecase _leastCommonMultipleUsecase = LeastCommonMultipleUsecase();
  final GreatestCommonDivisorUseCase _greatestCommonDivisorUseCase = GreatestCommonDivisorUseCase();
  final FactorialUseCase _factorialUseCase = FactorialUseCase();
  final PercentageUseCase _percentageUseCase = PercentageUseCase();
  final RuleOfThreeUseCase _ruleOfThreeUseCase = RuleOfThreeUseCase();
  final LinearEquationUseCase _linearEquationUseCase = LinearEquationUseCase();
  final QuadraticEquationUseCase _quadraticEquationUseCase = QuadraticEquationUseCase();
  final CompoundInterestUseCase _compoundInterestUseCase = CompoundInterestUseCase();
  final SimpleInterestUseCase _simpleInterestUseCase = SimpleInterestUseCase();

  String infoText = "";
  String tip = "";

  void calcular({
    required CalculatorEnum type,
    required List<String> values,
  }) {
    switch (type) {
      case CalculatorEnum.table:
        _calculateTable(values);
        break;
      case CalculatorEnum.mmc:
        _calculateMmc(values);
        break;
      case CalculatorEnum.mdc:
        _calculateMdc(values);
        break;
      case CalculatorEnum.factorial:
        _calculateFactorial(values);
        break;
      case CalculatorEnum.percentage:
        _calculatePercentage(values);
        break;
      case CalculatorEnum.ruleOfThree:
        _calculateRuleOfThree(values);
        break;
      case CalculatorEnum.linearEquation:
        _calculateLinearEquation(values);
        break;
      case CalculatorEnum.quadraticEquation:
        _calculateQuadraticEquation(values);
        break;
      case CalculatorEnum.compoundInterest:
        _calculateCompoundInterest(values);
        break;
      case CalculatorEnum.simpleInterest:
        _calculateSimpleInterest(values);
        break;
    }
    notifyListeners();
  }

  void _calculateTable(List<String> values) {
    if (values.isEmpty) {
      infoText = CoreStrings.fillFieldsMessage;
      return;
    }

    final value = int.parse(values[0]);

    final result = _multiplicationTableUsecase.execute(value);

    infoText = result["info"] ?? "";
    tip = result["tip"] ?? "";
  }

  void _calculateMmc(List<String> values) {
    if (values.any((v) => v.isEmpty)) {
      infoText = CoreStrings.fillFieldsMessage;
      tip = "";
      return;
    }

    final a = int.parse(values[0]);
    final b = int.parse(values[1]);

    final result = _leastCommonMultipleUsecase.execute(a, b);

    infoText = result.result;
    tip = result.tip;
  }

  void _calculateMdc(List<String> values) {
    if (values.any((v) => v.isEmpty)) {
      infoText = CoreStrings.fillFieldsMessage;
      tip = "";
      return;
    }

    final a = int.parse(values[0]);
    final b = int.parse(values[1]);

    final result = _greatestCommonDivisorUseCase.execute(a, b);

    infoText = result.result;
    tip = result.tip;
  }

  void _calculateFactorial(List<String> values) {
    if (values.isEmpty || values[0].isEmpty) {
      infoText = CoreStrings.fillFieldMessage;
      tip = "";
      return;
    }

    final value = int.parse(values[0]);

    final result = _factorialUseCase.execute(value);

    infoText = result.result;
    tip = result.tip;
  }

  void _calculatePercentage(List<String> values) {
    if (values.any((v) => v.isEmpty)) {
      infoText = CoreStrings.fillFieldsMessage;
      tip = "";
      return;
    }

    final valor1 = double.parse(values[0]);
    final valor2 = double.parse(values[1]);

    final result = _percentageUseCase.execute(valor1, valor2);

    infoText = result.result;
    tip = result.tip;
  }

  void _calculateRuleOfThree(List<String> values) {
    if (values.any((v) => v.isEmpty)) {
      infoText = CoreStrings.fillFieldsMessage;
      tip = "";
      return;
    }

    final valor1 = double.parse(values[0]);
    final valor2 = double.parse(values[1]);
    final valor3 = double.parse(values[2]);

    final result = _ruleOfThreeUseCase.execute(
      valor1,
      valor2,
      valor3,
    );

    infoText = result.result;
    tip = result.tip;
  }

  void _calculateLinearEquation(List<String> values) {
    if (values.any((v) => v.isEmpty)) {
      infoText = CoreStrings.fillFieldsMessage;
      tip = "";
      return;
    }

    final a = double.parse(values[0]);
    final b = double.parse(values[1]);

    if (a == 0) {
      infoText = CoreStrings.linearEquationAZeroError;
      tip = "";
      return;
    }

    final result = _linearEquationUseCase.execute(a, b);

    infoText = result.result;
    tip = result.tip;
  }

  void _calculateQuadraticEquation(List<String> values) {
    if (values.any((v) => v.isEmpty)) {
      infoText = CoreStrings.fillFieldsMessage;
      tip = "";
      return;
    }

    final a = double.parse(values[0]);
    final b = double.parse(values[1]);
    final c = double.parse(values[2]);

    final result = _quadraticEquationUseCase.execute(a, b, c);

    infoText = result.result;
    tip = result.tip;
  }

  void _calculateCompoundInterest(List<String> values) {
    if (values.any((v) => v.isEmpty)) {
      infoText = CoreStrings.emptyFieldsMessage;
      tip = "";
      return;
    }

    final capital = double.parse(values[0]);
    final taxa = double.parse(values[1]);
    final meses = double.parse(values[2]);

    final result = _compoundInterestUseCase.execute(
      capital: capital,
      taxa: taxa,
      meses: meses,
    );

    infoText = result.result;
    tip = result.tip;
  }

  void _calculateSimpleInterest(List<String> values) {
    double? capital = values[0].isEmpty ? null : double.parse(values[0]);

    double? taxa = values[1].isEmpty ? null : double.parse(values[1]);

    double? tempo = values[2].isEmpty ? null : double.parse(values[2]);

    double? juros = values[3].isEmpty ? null : double.parse(values[3]);

    final result = _simpleInterestUseCase.execute(
      capital: capital,
      taxa: taxa,
      tempo: tempo,
      juros: juros,
    );

    infoText = result.result;
    tip = result.tip;
  }

  void clear() {
    infoText = '';
    tip = '';
    notifyListeners();
  }

  CalculatorResponse get response {
    return CalculatorResponse(
      result: infoText,
      tip: tip,
    );
  }
}
