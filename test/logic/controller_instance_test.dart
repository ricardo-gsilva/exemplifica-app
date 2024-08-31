import 'package:exemplifica/controller/controller_equacao_1.dart';
import 'package:exemplifica/controller/controller_equacao_2.dart';
import 'package:exemplifica/controller/controller_fatorial.dart';
import 'package:exemplifica/controller/controller_instance.dart';
import 'package:exemplifica/controller/controller_juros_compostos.dart';
import 'package:exemplifica/controller/controller_juros_simples.dart';
import 'package:exemplifica/controller/controller_mdc.dart';
import 'package:exemplifica/controller/controller_mmc.dart';
import 'package:exemplifica/controller/controller_porcentagem.dart';
import 'package:exemplifica/controller/controller_regra_de_3.dart';
import 'package:exemplifica/controller/controller_tabuada.dart';
import 'package:exemplifica/utils/enum_calculator.dart';
import 'package:test/test.dart';

void main() {
  ControllerInstance instance = ControllerInstance.instance;
  group("Testando ControllerInstance", () {
    test("Testando ControllerInstance com Equacao 1 Grau", () {
      var instances = instance.getInstance(CalculatorEnum.equacao_1);

      expect(instances, ControllerEquacao1.instance);
    });

    test("Testando ControllerInstance com Equacao 2 Grau", () {
      var instances = instance.getInstance(CalculatorEnum.equacao_2);

      expect(instances, ControllerEquacao2.instance);
    });

    test("Testando ControllerInstance com Fatorial", () {
      var instances = instance.getInstance(CalculatorEnum.fatorial);

      expect(instances, ControllerFatorial.instance);
    });

    test("Testando ControllerInstance com Tabuada", () {
      var instances = instance.getInstance(CalculatorEnum.tabuada);

      expect(instances, ControllerTabuada.instance);
    });

    test("Testando ControllerInstance com MMC", () {
      var instances = instance.getInstance(CalculatorEnum.mmc);

      expect(instances, ControllerMmc.instance);
    });

    test("Testando ControllerInstance com MDC", () {
      var instances = instance.getInstance(CalculatorEnum.mdc);

      expect(instances, ControllerMdc.instance);
    });

    test("Testando ControllerInstance com Juros Simples", () {
      var instances = instance.getInstance(CalculatorEnum.jurosSimples);

      expect(instances, ControllerJurosSimples.instance);
    });

    test("Testando ControllerInstance com Juros Compostos", () {
      var instances = instance.getInstance(CalculatorEnum.jurosCompostos);

      expect(instances, ConstrollerJurosCompostos.instance);
    });

    test("Testando ControllerInstance com Porcentagem", () {
      var instances = instance.getInstance(CalculatorEnum.porcentagem);

      expect(instances, ControllerPorcentagem.instance);
    });

    test("Testando ControllerInstance com Regra de 3", () {
      var instances = instance.getInstance(CalculatorEnum.regraDe3);

      expect(instances, ControllerRegraDe3.instance);
    });
  });
}
