import 'package:exemplifica/domain/usecase/control_field.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class ControllerEquacao1 implements ControlField{  

  static ControllerEquacao1? _instance;
  
  ControllerEquacao1._();

  static get instance {
    _instance ??= ControllerEquacao1._();
    return _instance;
  }

  TextEditingController val1 = TextEditingController();
  TextEditingController val2 = TextEditingController();

  String resultEq1_1 = "";
  String format_a = "";
  String format_b = "";
  String format_r = "";
  double a = 0;
  double b = 0;
  double r = 0;
  bool visible = false;

  NumberFormat formatEq1_1 = new NumberFormat("0");
  NumberFormat formatEq1_2 = new NumberFormat("0.00");
  NumberFormat formatEq1_3 = new NumberFormat("");
  NumberFormat formatEq1_4 = new NumberFormat("+ 0");
  NumberFormat formatEq1_5 = new NumberFormat("+ 0.00");
  NumberFormat formatEq1_6 = new NumberFormat(" 0.00");
  NumberFormat formatEq1_7 = new NumberFormat(" 0");

  @override
  void resetCampos() {
    visible = false;
    val1.clear();
    val2.clear();
    resultEq1_1 = "";
  }
  
  @override
  void verificarCampos() {
    if (val1.text.isEmpty || val2.text.isEmpty) {
      resultEq1_1 = "Por favor, preencha os campos!";
      visible = true;
    } else {
      calcular();
    }
  }

  @override
  void calcular(){
    double a = double.parse(val1.text);
    double b = double.parse(val2.text);

    format_a = val1.text;
    format_r = formatEq1_1.format(r);

    if ((b == b.floor()) && (b < 0)) {
      format_b = formatEq1_3.format(b);
    } else if ((b == b.floor() && (b >= 0))) {
      format_b = formatEq1_1.format(b);
    } else if ((b != b.floor() && (b < 0))) {
      format_b = formatEq1_2.format(b);
    } else {
      format_b = formatEq1_2.format(b);
    }    

    resultEq1_1 = """ 
        ${format_a}x + ($format_b) = $format_r
        ${format_a}x ${formatNumberBLineTwo(format_b)} = $format_r
        ${format_a}x = $format_r ${formatNumberBLineThree(format_b)}
        ${format_a}x = ${resultRBLineFour(b, r)}
        x = ${resultRBLineFour(b, r)} / $format_a
        x = ${valorX(a, b)}
        """;
  }

  String formatNumberBLineTwo(String linha2) {
    double num = (double.parse(linha2));

    if ((num == num.floor()) && (num < 0)) {
      linha2 = formatEq1_7.format(num);
    } else if ((num == num.floor() && (num >= 0))) {
      linha2 = formatEq1_4.format(num);
    } else if ((num != num.floor() && (num < 0))) {
      linha2 = formatEq1_6.format(num);
    } else {
      linha2 = formatEq1_5.format(num);
    }
    return linha2;
  }

  String formatNumberBLineThree(String linha3) {
    double num = (double.parse(linha3));
    num = -(num);
    if ((num == num.floor()) && (num < 0)) {
      linha3 = formatEq1_7.format(num);
    } else if ((num == num.floor() && (num >= 0))) {
      linha3 = formatEq1_4.format(num);
    } else if ((num != num.floor() && (num < 0))) {
      linha3 = formatEq1_6.format(num);
    } else {
      linha3 = formatEq1_5.format(num);
    }

    return linha3;
  }

  String valorX(double a, double b) {
    double x = ((((r) + (b)) / a));
    String valorX = "";
    if (x == x.floor()) {
      valorX = formatEq1_1.format((x));
    } else {
      valorX = formatEq1_2.format((x));
    }
    return valorX;
  }

  String resultRBLineFour(double numB, double numR){
    numB = numR - (numB);    
    String format_rb = "";
    if (numB == numB.floor()) {
      format_rb = formatEq1_1.format(numB);
    } else {
      format_rb = formatEq1_2.format(numB);
    }

    return format_rb;
  }
}
