import 'package:exemplifica/domain/usecase/control_field_with_label.dart';
import 'package:flutter/material.dart';

class ControllerMdc implements ControlFieldWithLabel {
  static ControllerMdc? _instance;

  ControllerMdc._();

  static get instance {
    return _instance ??= ControllerMdc._();
  }

  TextEditingController val1 = TextEditingController();
  TextEditingController val2 = TextEditingController();

  String resultMdc = "";
  String resultMdc1 = "";
  String resultMdc2 = "";

  double valormdc1 = 0;
  double valormdc2 = 0;
  int div = 0;
  int a = 0;
  int b = 0;
  int rest = 0;
  int mdc = 0;

  bool visible = false;
  
  @override
  void resetCampos() {
    visible = false;
    val1.clear();
    val2.clear();
    resultMdc = "";
    resultMdc1 = "";
    resultMdc2 = "";
  }
  
  @override
  void verificarCampos() {
    visible = true;
    if (val1.text.isEmpty || val2.text.isEmpty) {
      resultMdc = "Por favor, preencha os campos.\n Utilize valores até 99999!";
    } else {
      resultMdc = "";
      resultMdc1 = "";
      resultMdc2 = "";
      calcular();
    }
  }

  @override
  void calcular() {
    valormdc1 = double.parse(val1.text);
    valormdc2 = double.parse(val2.text);
    div = 2;
    a = valormdc1.toInt();
    b = valormdc2.toInt();
    rest = 0;
    if ((valormdc1 == 1) && (valormdc2 == 1)) {
      resultMdc =
          "O MDC de 1 será sempre 1, independente de quantas vezes for utilizado. \n";
      resultMdc2 = "";
    } else {
      while (b != 0) {
        rest = a % b;
        a = b;
        b = rest;
        while ((valormdc1 != 1) || (valormdc2 != 1)) {
          int mdc1 = valormdc1.toInt();
          int mdc2 = valormdc2.toInt();
          while ((valormdc1 % div != 0) && (valormdc2 % div != 0)) {
            div++;
          }
          if ((valormdc1 % div == 0) && (valormdc2 % div == 0)) {
            resultMdc = "$resultMdc $mdc1, $mdc2 | $div - Ok \n";
            valormdc1 = valormdc1 / div;
            valormdc2 = valormdc2 / div;
          } else if (((valormdc1 % div == 0) && (valormdc2 % div != 0))) {
            resultMdc = "$resultMdc $mdc1, $mdc2 | $div \n";
            valormdc1 = valormdc1 / div;
          } else if (((valormdc1 % div != 0) && (valormdc2 % div == 0))) {
            resultMdc = "$resultMdc $mdc1, $mdc2 | $div \n";
            valormdc2 = valormdc2 / div;
          }
          if (((valormdc1 == 1) && (valormdc2 == 1))) {
            int mdc11 = valormdc1.toInt();
            int mdc22 = valormdc2.toInt();
            div = 1;
            resultMdc = "$resultMdc $mdc11, $mdc22 | $div - Ok \n";
          }
        }
      }
      mdc = a;
      resultMdc1 = resultMdc1 +
          "Os valores a serem utilizados, serão os que estão com o símbolo de Ok ao lado."
              " Multiplicando todos esses valores, temos o valor do MDC: $mdc"
              "\n";
    }
  }
  
  @override
  List<String> responseList() {
    return [resultMdc, resultMdc1, resultMdc2];
  }
  
  @override
  List<TextEditingController> controllerList() {
    return [val1, val2];
  }
  
  @override
  List<String> labelList() {
    return ["Valor 1:", "Valor 2:"];
  }
}
