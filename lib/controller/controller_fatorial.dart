import 'package:exemplifica/domain/usecase/control_field.dart';
import 'package:flutter/material.dart';

class ControllerFatorial implements ControlField {
  static ControllerFatorial? _instance;

  ControllerFatorial._();

  static get instance {
    _instance ??= ControllerFatorial._();
    return _instance;
  }

  TextEditingController val1 = TextEditingController();

  String resultFat = "";
  String resultFinal = "";
  String infoFatorial = "";
  bool visible = false;
  int fat = 0;
  int i = 0;
  int a = 0;
  int b = 0;
  int c = 0;

  @override
  void resetCampos() {
    visible = false;
    val1.clear();
    resultFat = "";
    resultFinal = "";
    infoFatorial = "";
  }

  @override
  void verificarCampos() {
    if (val1.text.isEmpty) {
      visible = true;
      resultFat = "Por favor, preencha o campo com um valor!\n\n"
          "Obs: Devido a exigência de processamento, não faremos calculos"
          " com valores acima de 14.";
    } else {
      resultFat = "";
      resultFinal = "";
      infoFatorial = "";
      calcular();
    }
  }

  @override
  void calcular() {
    visible = true;
    int valFatorial = int.parse(val1.text);
    if (valFatorial == 0) {
      resultFat = "Obs: O valor fatorial de 0 será sempre o número 1.";
    } else if (valFatorial > 14) {
      resultFat = "Devido a exigência de processamento, não faremos calculos"
          " com valores acima de 14.";
    } else {
      fat = valFatorial;
      i = 1;
      a = 1;
      b = 2;
      c = 1;

      for (i = 1; i < fat; i++) {
        c = a * b;
        resultFat = "$resultFat $valFatorial! = $a x $b = $c\n";
        b++;
        a = c;
      }
      resultFinal = "$valFatorial! = $c ";
      infoFatorial = "Obs: O valor fatorial de 0 será sempre o número 1.";
    }
  }
}
