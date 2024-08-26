import 'package:exemplifica/domain/usecase/control_field.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ControllerPorcentagem implements ControlField {
  static ControllerPorcentagem? _instance;

  ControllerPorcentagem._();

  static get instance {
    return _instance ??= ControllerPorcentagem._();
  }

  TextEditingController val1 = TextEditingController();
  TextEditingController val2 = TextEditingController();
  String resultPorcent = "";
  bool visible = false;
  double valor1 = 0;
  double valor2 = 0;
  double mult2 = 0;
  String comp1 = "";
  double result = 0;
  String valor1f = "";
  String valor2f = "";
  String mult2f = "";
  String resultf = "";

  NumberFormat format1 = NumberFormat("0");
  NumberFormat format2 = NumberFormat("0.00");  
  
  @override
  void resetCampos() {
    visible = false;
    val1.clear();
    val2.clear();
    resultPorcent = "";
  }
  
  @override
  void verificarCampos() {
    visible = true;
    if (val1.text.isEmpty || val2.text.isEmpty) {      
      resultPorcent = "Por favor, preencha os campos!";
    } else {
      resultPorcent = "";
      calcular();
    }
  }

  @override
  void calcular() {
    valor1 = double.parse(val1.text);
    valor2 = double.parse(val2.text);
    mult2 = valor2 * 100;
    comp1 = "100";
    result = mult2 / valor1;
    valor1f = "";
    valor2f = "";
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

    resultPorcent = "$valor2f x $comp1 = $valor1f x 'X' \n"
        "$valor1f.'X' = $mult2f \n"
        "'X' = $mult2f / $valor1f \n"
        "'X' = $resultf%";
  }
  
  @override
  List<String> responseList() {
    return [resultPorcent];
  }
  
  @override
  List<TextEditingController> controllerList() {
    return [val1, val2];
  }
}
