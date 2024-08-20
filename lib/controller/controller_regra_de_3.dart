import 'package:exemplifica/domain/usecase/control_field.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ControllerRegraDe3 implements ControlField {
  static ControllerRegraDe3? _instance;

  ControllerRegraDe3._();

  static get instance {
    return _instance ??= ControllerRegraDe3._();
  }

  TextEditingController val1 = TextEditingController();
  TextEditingController val2 = TextEditingController();
  TextEditingController val3 = TextEditingController();
  String resultRegra3 = "";
  bool visible = false;
  double valor1 = 0;
  double valor2 = 0;
  double valor3 = 0;
  double mult2 = 0;
  double result = 0;
  String valor1f = "";
  String valor2f = "";
  String valor3f = "";
  String mult2f = "";
  String resultf = "";

  NumberFormat format1 = NumberFormat("0");
  NumberFormat format2 = NumberFormat("0.00");  
  
  @override
  void resetCampos() {
    visible = false;
    val1.clear();
    val2.clear();
    val3.clear();
    resultRegra3 = "";
  }
  
  @override
  void verificarCampos() {
    if (val1.text.isEmpty || val2.text.isEmpty || val3.text.isEmpty) {
      resultRegra3 = "Por favor, preencha os campos!";
    } else {
      resultRegra3 = "";
      calcular();
    }
  }

  @override
  void calcular() {
    visible = true;
    valor1 = double.parse(val1.text);
    valor2 = double.parse(val2.text);
    valor3 = double.parse(val3.text);
    mult2 = valor2 * valor3;
    result = mult2 / valor1;
    valor1f = "";
    valor2f = "";
    valor3f = "";
    mult2f = "";
    resultf = "";

    if (valor1 == valor1.floor()) {
      valor1f = format1.format((valor1));
    } else {
      valor1f = format2.format((valor1));
    }
    if (valor2 == valor2.floor()) {
      valor2f = format1.format((valor2));
    } else {
      valor2f = format2.format((valor2));
    }
    if (valor3 == valor3.floor()) {
      valor3f = format1.format((valor3));
    } else {
      valor3f = format2.format((valor3));
    }
    if (mult2 == mult2.floor()) {
      mult2f = format1.format((mult2));
    } else {
      mult2f = format2.format((mult2));
    }
    if (result == result.floor()) {
      resultf = format1.format((result));
    } else {
      resultf = format2.format((result));
    }

    resultRegra3 = "$valor2f x $valor3f = $valor1f x 'X' \n"
        "$valor1f.'X' = $mult2f \n"
        "'X' = $mult2f / $valor1f \n"
        "'X' = $resultf";
  }
}
