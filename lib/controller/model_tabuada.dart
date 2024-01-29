import 'package:flutter/material.dart';

class ModelTabuada {
  TextEditingController nTabuada = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String infoText = "";
  String dica = "";
  bool visible = false;

  void verificarCampo() {
    if (nTabuada.text.isEmpty) {
      infoText = "Por favor, preencha os campos!";
    } else {
      infoText = '';
      dica = '';
      calcular();
    }
  }

  void resetCampos() {
    visible = false;
    nTabuada.clear();
    infoText = "";
    dica = "";
    formKey = GlobalKey<FormState>();
  }

  void calcular() {
    int i;
    int val = int.parse(nTabuada.text);
    if (val.toString().isEmpty) {
      infoText = "Digite um valor igual ou menor que 99999!" + "\n";
    } else if (val > 99999) {
      infoText = "Informe um novo valor menor ou igual a 99999!";
    } else {
      visible = true;
      for (i = 0; i <= 10; i++) {
        infoText = infoText +
            "$val" +
            " " +
            "x " +
            "$i" +
            " = " +
            "${(val * i)}" +
            "\n";
        dica =
            "Obs: Lembre-se de como funciona a multiplicação e entenderá os resultados da tabuada. Um valor 2 x 3 = 6"
            " é o mesmo que 2 + 2 + 2 = 6. O primeiro número é o valor da tabuada e o segundo é a quantidade de vezes que é"
            " somado por ele mesmo.";
      }
    }
  }
}
