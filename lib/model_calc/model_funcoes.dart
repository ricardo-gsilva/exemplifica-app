import 'package:exemplifica_git/ad_mob/ad_mob.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ModelFuncoes {

  // final AdMob adMob = AdMob();

  TextEditingController a = TextEditingController();
  TextEditingController b = TextEditingController();
  TextEditingController r = TextEditingController();

  String resultF = "";
  String resultF_1 = "";
  String resultF_2 = "";
  String a1 = "";
  String b1 = "";
  String r1 = "";

  void resetCampos() {
      a.text = "";
      b.text = "";
      r.text = "";
      resultF = "";
      resultF_1 = "";
      resultF_2 = "";
  }

  void verificarCampos(){
    if ((a.text.isEmpty) || (b.text.isEmpty) || (r.text.isEmpty)) {
      resultF = "Preencha os campos para encontrar o valor de 'x' na função.";
      resultF_1 = "";
      resultF_2 = "";
    } else {
      resultF = "";
      funcoes();
      // adMob.showInstersticial();
    }
  }

  void funcoes() {
      
        double a1 = double.parse(a.text);
        double b1 = double.parse(b.text);
        double r1 = double.parse(r.text);
        double b2 = -1 * b1;
        double r2 = r1 - (b1);
        double x2 = r2 / a1;
        double ax = a1 * x2;
        double ab = ax +(b1);
        //f(x) = ax + b = ?

        String fa2 = "";
        String fb1 = "";
        String fb2 = "";
        String fr1 = "";
        String fr2 = "";
        String fx2 = "";
        String rcapital = "";
        String fcapital = "";
        String ftaxa = "";
        String ftaxa2 = "";
        String ftaxa3 = "";
        String ftaxa4 = "";
        String rmontante = "";
        String fmontante = "";

        //Formatação
        NumberFormat ff1 = new NumberFormat ("+ 0");
        NumberFormat ff2 = new NumberFormat ("0.00");
        NumberFormat ff3 = new NumberFormat ("+ 0.00");
        NumberFormat ff4 = new NumberFormat ("0");

        if((a1 == a1.floor() && a1 >= 0)) {
          fa2 = ff4.format(a1);
        } else if(a1 != a1.floor() && a1 < 0){
          fa2 = ff2.format(a1);
        } else if(a1 != a1.floor() && a1 >= 0){
          fa2 = ff2.format(a1);
        } else {
          fa2 = ff4.format(a1);
        }

        if((b1 == b1.floor() && b1 >= 0)) {
          fb1 = ff1.format(b1);
        } else if(b1 != b1.floor() && b1 < 0){
          fb1 = ff2.format(b1);
        } else if(b1 != b1.floor() && b1 >= 0){
          fb1 = ff3.format(b1);
        } else {
          fb1 = ff4.format(b1);
        }

        if((b2 == b2.floor() && b2 >= 0)) {
          fb2 = ff1.format(b2);
        } else if(b2 != b2.floor() && b2 < 0){
          fb2 = ff2.format(b2);
        } else if(b2 != b2.floor() && b2 >= 0){
          fb2 = ff3.format(b2);
        } else {
          fb2 = ff4.format(b2);
        }

        if((r1 == r1.floor() && r1 >= 0)) {
          fr1 = ff4.format(r1);
        } else if(r1 != r1.floor() && r1 < 0){
          fr1 = ff2.format(r1);
        } else if(r1 != r1.floor() && r1 >= 0){
          fr1 = ff2.format(r1);
        } else {
          fr1 = ff4.format(r1);
        }

        if((r2 == r2.floor() && r2 >= 0)) {
          fr2 = ff4.format(r2);
        } else if(r2 != r2.floor() && r2 < 0){
          fr2 = ff2.format(r2);
        } else if(r2 != r2.floor() && r2 >= 0){
          fr2 = ff2.format(r2);
        } else {
          fr2 = ff4.format(r2);
        }

        if((x2 == x2.floor() && x2 >= 0)) {
          fx2 = ff4.format(x2);
        } else if(x2 != x2.floor() && x2 < 0){
          fx2 = ff2.format(x2);
        } else if(x2 != x2.floor() && x2 >= 0){
          fx2 = ff2.format(x2);
        } else {
          fx2 = ff4.format(x2);
        }


        resultF = "O valor de 'x' na função" "\n"
            "f(x) ${fa2}x ${fb1} = ${fr1} é: ${fx2}" "\n""\n"

            "f(x) (${fa2} * x) ${fb1} = ${fr1}" "\n"
            "f(x) ${fa2} * x = ${fr1} ${fb2}""\n"
            "f(x) x = ${fr2} / ${fa2}""\n"
            "f(x) x = ${fx2}""\n"
            "f(x) = ${fx2}""\n";

        resultF_1 = "Sabendo-se que o valor de X é ${fx2}, vamos tirar a prova e confirmar se o resultado"
            " será mesmo ${fr1}.""\n""\n"
            "f(${fx2}) (${fa2} * ${fx2}) ${fb1} = ?" "\n"
            "f(${fx2}) ${fr2} ${fb1} = ?""\n"
            "f(${fx2}) = ${fr1}""\n";
      
  }
}