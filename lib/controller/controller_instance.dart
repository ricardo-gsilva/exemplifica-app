import 'package:exemplifica/controller/controller_equacao_1.dart';
import 'package:exemplifica/controller/controller_equacao_2.dart';
import 'package:exemplifica/controller/controller_fatorial.dart';
import 'package:exemplifica/controller/controller_juros_compostos.dart';
import 'package:exemplifica/controller/controller_juros_simples.dart';
import 'package:exemplifica/controller/controller_mdc.dart';
import 'package:exemplifica/controller/controller_mmc.dart';
import 'package:exemplifica/controller/controller_porcentagem.dart';
import 'package:exemplifica/controller/controller_regra_de_3.dart';
import 'package:exemplifica/controller/controller_tabuada.dart';
import 'package:exemplifica/utils/enum_calculator.dart';

class ControllerInstance {
  static ControllerInstance? _instance;

  ControllerInstance._();

  static get instance {
    _instance ??= ControllerInstance._();
    return _instance;
  }

  getInstance(CalculatorEnum calculator) {
    switch (calculator) {
      case CalculatorEnum.equacao_1:
        return ControllerEquacao1.instance;
      case CalculatorEnum.equacao_2:
        return ControllerEquacao2.instance;
      case CalculatorEnum.fatorial:
        return ControllerFatorial.instance;
      case CalculatorEnum.jurosCompostos:
        return ConstrollerJurosCompostos.instance;
      case CalculatorEnum.jurosSimples:
        return ControllerJurosSimples.instance;
      case CalculatorEnum.mdc:
        return ControllerMdc.instance;
      case CalculatorEnum.mmc:
        return ControllerMmc.instance;
      case CalculatorEnum.porcentagem:
        return ControllerPorcentagem.instance;
      case CalculatorEnum.regraDe3:
        return ControllerRegraDe3.instance;
      case CalculatorEnum.tabuada:
        return ControllerTabuada.instance;
      default:
        break;
    }
  }
}
