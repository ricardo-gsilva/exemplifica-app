import 'package:flutter/material.dart';

class ModelFatorial {
  TextEditingController val1 = TextEditingController();

  String resultFat = "";
  String resultFinal = "";
  String infoFatorial = "";  
  bool visible = false;

  void resetCampos() {
    visible = false;
    val1.clear();
    resultFat = "";
    resultFinal = "";
    infoFatorial = "";
  }

  void verificarCampos() {
    if (val1.text.isEmpty) {
      visible = true;
      resultFat = "Por favor, preencha o campo com um valor!" + "\n"
              "Obs: Devido a limitações com relação ao tamanho da tela, não podemos"
              " calcular valores acima de 14.";
    } else {
      resultFat = "";
      resultFinal = "";
      infoFatorial = "";
      fatorial();
    }
  }

  void fatorial() {
    visible = true;
    int valFatorial = int.parse(val1.text);
    if (valFatorial == 0) {
      resultFat = "Obs: O valor fatorial de 0 será sempre o número 1.";
    } else if (valFatorial > 14) {
      resultFat =
          "Devido a limitações com relação ao tamanho da tela, não podemos"
          " calcular valores acima de 14.";
    } else {
      int fat = valFatorial;
      int i = 1;
      int a = 1;
      int b = 2;
      int c = 1;

      for (i = 1; i < fat; i++) {
        c = a * b;
        resultFat = "$resultFat ${valFatorial}! = $a x $b = $c\n";
        b++;
        a = c;
      }
      resultFinal = "${valFatorial}! = $c ";
      infoFatorial = "Obs: O valor fatorial de 0 será sempre o número 1.";
    }
  }
}
