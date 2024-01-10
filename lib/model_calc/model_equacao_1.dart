import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ModelEquacao1 {
  // final AdMob adMob = AdMob();

  TextEditingController val1 = TextEditingController();
  TextEditingController val2 = TextEditingController();

  String resultEq1_1 = "";
  String valA = '';
  String valB = '';

  void verificarCampo() {
    if (val1.text.isEmpty || val2.text.isEmpty) {
      resultEq1_1 = "Por favor, preencha os campos!";
    } else {
      _equacao1_1();
      // adMob.showInstersticial();
    }
  }

  void resetCampos() {
    val1.text = "";
    val2.text = "";
    resultEq1_1 = "";
  }

  void _equacao1_1() {
    NumberFormat dfEq1_1 = new NumberFormat("0");
    NumberFormat dfEq1_2 = new NumberFormat(" 0.00");
    NumberFormat dfEq1_3 = new NumberFormat("");
    NumberFormat dfEq1_4 = new NumberFormat("+ 0");
    NumberFormat dfEq1_5 = new NumberFormat("+ 0.00");

    String f_a = "";
    String f_b = "";
    String f_r = "";
    String f_b1 = "";
    String f_b2 = "";
    String f_rb = "";
    double a = double.parse(val1.text);
    double b = double.parse(val2.text);
    double r = 0;
    double b_n = 0;
    double b_n2 = 0;

    f_a = dfEq1_1.format(a);
    f_r = dfEq1_1.format(r);

    if (b >= 0) {
      f_b = dfEq1_1.format(b);
    } else if (b != b.floor()) {
      f_b = dfEq1_2.format(b);
    } else {
      f_b = dfEq1_3.format(b);
    }

    if (b >= 0) {
      f_b2 = dfEq1_4.format(b);
    } else if (b != b.floor()) {
      f_b2 = dfEq1_2.format(b);
    } else {
      f_b2 = dfEq1_3.format(b);
    }

    b_n = -(b);
    if ((b_n == b_n.floor()) && (b_n < 0)) {
      f_b1 = dfEq1_3.format(b_n);
    } else if ((b_n == b_n.floor() && (b_n >= 0))) {
      f_b1 = dfEq1_4.format(b_n);
    } else if ((b_n != b_n.floor() && (b_n < 0))) {
      f_b1 = dfEq1_2.format(b_n);
    } else {
      f_b1 = dfEq1_5.format(b_n);
    }

    b_n2 = r - b;
    if (b_n2 == b_n2.floor()) {
      f_rb = dfEq1_1.format(b_n2);
    } else {
      f_rb = dfEq1_2.format(b_n2);
    }

    double x = ((((r) + (-1 * b)) / a));
    String valorX = "";
    if (x == x.floor()) {
      valorX = dfEq1_1.format((x));
    } else {
      valorX = dfEq1_2.format((x));
    }

    resultEq1_1 = f_a +
        "x" +
        " + " +
        "(" +
        f_b +
        ")" +
        " = " +
        f_r +
        "\n" +
        f_a +
        "x " +
        f_b2 +
        " = " +
        f_r +
        "\n" +
        f_a +
        "x" +
        " = " +
        f_r +
        " " +
        f_b1 +
        "\n" +
        f_a +
        "x" +
        " = " +
        f_rb +
        "\n" +
        "x = " +
        f_rb +
        " / " +
        f_a +
        "\n" +
        "x = " +
        valorX;
  }
}
