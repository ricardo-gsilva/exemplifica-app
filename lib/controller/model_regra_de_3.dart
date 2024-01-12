import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ModelRegraDe3 {
  TextEditingController val1 = TextEditingController();
  TextEditingController val2 = TextEditingController();
  TextEditingController val3 = TextEditingController();

  String resultRegra3 = "";

  void resetCampos() {
      val1.text = "";
      val2.text = "";
      val3.text = "";
      resultRegra3 = "";
  }

  void verificarCampos(){
    if(val1.text.isEmpty || val2.text.isEmpty || val3.text.isEmpty){
      resultRegra3 = "Por favor, preencha os campos!";
    } else {
      resultRegra3 = "";
      regra3();
    }
  }

  void regra3() {    
      double valor1 = double.parse(val1.text);
      double valor2 = double.parse(val2.text);
      double valor3 = double.parse(val3.text);
      double mult2 = valor2 * valor3;
      double result = mult2 / valor1;
      String valor1f = "";
      String valor2f = "";
      String valor3f = "";
      String mult2f = "";
      String resultf = "";

      NumberFormat format1 = NumberFormat("0");
      NumberFormat format2 = NumberFormat("0.00");

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

      resultRegra3 = resultRegra3 + valor2f + " x " + valor3f + " = " + valor1f + " x " + " 'X' " + "\n" +
          valor1f + ".'X'" + " = " + mult2f + "\n" +
          "'X'" + " = " + mult2f + "/" + valor1f + "\n" +
          "'X'" + " = " + resultf;
  }

}