import 'package:exemplifica_git/ad_mob/ad_mob.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ModelPorcentagem {

  // final AdMob adMob = AdMob();

    TextEditingController val1 = TextEditingController();
    TextEditingController val2 = TextEditingController();

    String resultPorcent = "";

    void resetCampos() {
        val1.text = "";
        val2.text = "";
        resultPorcent = "";      
    }

    void verificarCampos(){
      if(val1.text.isEmpty || val2.text.isEmpty){
        resultPorcent = "Por favor, preencha os campos!";
      } else {
        resultPorcent = "";
        porcentagem();
        // adMob.showInstersticial();
      }
    }

    void porcentagem() {    
      double valor1 = double.parse(val1.text);
      double valor2 = double.parse(val2.text);
      double mult2 = valor2 * 100;
      int comp1 = 100;
      double result = mult2 / valor1;
      String valor1f = "";
      String valor2f = "";
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

      resultPorcent = resultPorcent + valor2f + " x " + "${comp1}" + " = " + valor1f + " x " + " 'X' " + "\n" +
      valor1f + ".'X'" + " = " + mult2f + "\n" +
      "X" + " = " + mult2f + "/" + valor1f + "\n" +
      "X" + " = " + resultf;
  }
}