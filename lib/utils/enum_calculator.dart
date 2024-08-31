import 'package:exemplifica/utils/constants/core_strings.dart';

enum CalculatorEnum {
  equacao_1(CoreStrings.titleEquacao1),
  equacao_2(CoreStrings.titleEquacao2),
  fatorial(CoreStrings.titleFatorial),
  mmc(CoreStrings.titleMmc),
  mdc(CoreStrings.titleMdc),
  jurosCompostos(CoreStrings.titleJurosCompostos),
  jurosSimples(CoreStrings.titleJurosSimples),
  porcentagem(CoreStrings.titlePorcentagem),
  regraDe3(CoreStrings.titleRegraDe3),
  tabuada(CoreStrings.titleTabuada);

  final String description;

  const CalculatorEnum(this.description);
}