import 'package:flutter/material.dart';

class ModelMdc {
  TextEditingController val1 = TextEditingController();
  TextEditingController val2 = TextEditingController();

  String resultMdc = "";
  String resultMdc1 = "";
  String resultMdc2 = "";

  bool visible = false;

  void resetCampos() {
    visible = false;
    val1.text = "";
    val2.text = "";
    resultMdc = "";
    resultMdc1 = "";
    resultMdc2 = "";
  }

  void verificarCampos() {
    if (val1.text.isEmpty || val2.text.isEmpty) {
      resultMdc = "Por favor, preencha os campos." +
          "\n" +
          "Utilize valores até 99999!";
    } else {
      resultMdc = "";
      resultMdc1 = "";
      resultMdc2 = "";
      mdc();
    }
  }

  void mdc() {
    visible = true;
    double valormdc1 = double.parse(val1.text);
    double valormdc2 = double.parse(val2.text);
    int div = 2;
    int a = valormdc1.toInt();
    int b = valormdc2.toInt();
    int rest = 0;
    if ((valormdc1 == 1) && (valormdc2 == 1)) {
      resultMdc = resultMdc +
          "O MDC de 1 será sempre 1, independente de quantas vezes for utilizado." +
          "\n";
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
            resultMdc = resultMdc +
                "$mdc1" +
                ", " +
                "$mdc2" +
                " | " +
                "$div" +
                " - Ok" +
                "\n";
            valormdc1 = valormdc1 / div;
            valormdc2 = valormdc2 / div;
            print("$valormdc1" + " " + "$valormdc2");
          } else if (((valormdc1 % div == 0) && (valormdc2 % div != 0))) {
            resultMdc =
                resultMdc + "$mdc1" + ", " + "$mdc2" + " | " + "$div" + "\n";
            valormdc1 = valormdc1 / div;
          } else if (((valormdc1 % div != 0) && (valormdc2 % div == 0))) {
            resultMdc =
                resultMdc + "$mdc1" + ", " + "$mdc2" + " | " + "$div" + "\n";
            valormdc2 = valormdc2 / div;
          }
          if (((valormdc1 == 1) && (valormdc2 == 1))) {
            int mdc11 = valormdc1.toInt();
            int mdc22 = valormdc2.toInt();
            div = 1;
            resultMdc = resultMdc +
                "$mdc11" +
                ", " +
                "$mdc22" +
                " | " +
                "$div" +
                " - Ok" +
                "\n";
          }
        }
      }
      resultMdc1 = resultMdc1 +
          "Os valores a serem utilizados, serão os que estão com o símbolo de Ok ao lado." +
          " Multiplicando todos esses valores, temos o valor do MDC: " +
          "$a" +
          "\n";
    }
  }
}
