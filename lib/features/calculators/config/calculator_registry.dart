import 'package:exemplifica/core/constants/core_strings.dart';
import 'package:exemplifica/features/calculators/config/calculators_config.dart';
import 'package:exemplifica/features/calculators/enums/calculator_layout_enum.dart';

import '../enums/calculator_type_enum.dart';

final Map<CalculatorEnum, CalculatorConfig> calculatorConfigs = {
  CalculatorEnum.table: CalculatorConfig(
    fields: 1,
    labels: [CoreStrings.valueLabel],
    title: CoreStrings.multiplicationTableTitle,
    description: CoreStrings.multiplicationTableCalculatorText1,
  ),
  CalculatorEnum.mmc: CalculatorConfig(
    fields: 2,
    labels: [CoreStrings.valueALabel, CoreStrings.valueBLabel],
    title: CoreStrings.lcmTitle,
    description: CoreStrings.lcmCalculatorText1,
  ),
  CalculatorEnum.mdc: CalculatorConfig(
    fields: 2,
    labels: [CoreStrings.valueALabel, CoreStrings.valueBLabel],
    title: CoreStrings.gcdTitle,
    description: CoreStrings.gcdCalculatorText1,
  ),
  CalculatorEnum.factorial: CalculatorConfig(
    fields: 1,
    labels: [CoreStrings.valueLabel],
    title: CoreStrings.factorialTitle,
    description: CoreStrings.factorialCalculatorText1,
  ),
  CalculatorEnum.ruleOfThree: CalculatorConfig(
    fields: 3,
    labels: [CoreStrings.fieldA, CoreStrings.fieldB, CoreStrings.fieldC],
    title: CoreStrings.ruleOfThreeTitle,
    description: CoreStrings.ruleOfThreeCalculatorText1,
    layout: CalculatorLayoutEnum.proportionForm,
  ),
  CalculatorEnum.percentage: CalculatorConfig(
    fields: 2,
    labels: [CoreStrings.fieldA, CoreStrings.fieldB],
    title: CoreStrings.percentageTitle,
    description: CoreStrings.percentageCalculatorText1,
    layout: CalculatorLayoutEnum.proportionForm,
  ),
  CalculatorEnum.linearEquation: CalculatorConfig(
    fields: 2,
    labels: [CoreStrings.fieldA, CoreStrings.fieldB],
    title: CoreStrings.linearEquationTitle,
    description: CoreStrings.linearEquationCalculatorText1,
    formula: CoreStrings.linearEquationCalculatorText2,
  ),
  CalculatorEnum.quadraticEquation: CalculatorConfig(
    fields: 3,
    labels: [CoreStrings.fieldA, CoreStrings.fieldB, CoreStrings.fieldC],
    title: CoreStrings.quadraticEquationTitle,
    description: CoreStrings.quadraticEquationCalculatorText1,
    formula: CoreStrings.quadraticEquationCalculatorText2,
  ),
  CalculatorEnum.simpleInterest: CalculatorConfig(
    fields: 4,
    labels: [CoreStrings.capitalLabel, CoreStrings.rateLabel, CoreStrings.monthsLabel, CoreStrings.interestLabel],
    title: CoreStrings.simpleInterestAppBarTitle,
    description: CoreStrings.simpleInterestCalculatorText1,
  ),
  CalculatorEnum.compoundInterest: CalculatorConfig(
    fields: 3,
    labels: [CoreStrings.capitalLabel, CoreStrings.rateLabel, CoreStrings.monthsLabel],
    title: CoreStrings.compoundInterestAppBarTitle,
    description: CoreStrings.compoundInterestCalculatorText1,
    formula: CoreStrings.compoundInterestCalculatorText2,
  ),
};
