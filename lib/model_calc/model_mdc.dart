import 'package:exemplifica_git/ad_mob/ad_mob.dart';
import 'package:flutter/material.dart';

class ModelMdc {

  final AdMob adMob = AdMob();
  
  TextEditingController val1 = TextEditingController();
  TextEditingController val2 = TextEditingController();

  String resultMdc = "";
  String resultMdc1 = "";
  String resultMdc2 = "";

  void resetCampos() {    
      val1.text = "";
      val2.text = "";
      resultMdc = "";
      resultMdc1 = "";
      resultMdc2 = "";
  }
  
  void verificarCampos(){
    if(val1.text.isEmpty || val2.text.isEmpty){
      resultMdc = "Por favor, preencha os campos." + "\n" +
        "Utilize valores até 99999!";
    } else {
      resultMdc = "";
      resultMdc1 = "";
      resultMdc2 = "";
      mdc();
      adMob.showInstersticial();
    }
  }

  void mdc() {
      
        double Valormdc1 = double.parse(val1.text);
        double Valormdc2 = double.parse(val2.text);
        int div = 2;
        int a = Valormdc1.toInt();
        int b = Valormdc2.toInt();
        int rest = 0;
        if ((Valormdc1 == 1) && (Valormdc2 == 1)) {
          resultMdc = resultMdc +
              "O MDC de 1 será sempre 1, independente de quantas vezes for utilizado." +
              "\n";
          resultMdc2 = "";
        } else {
          while (b != 0) {
            rest = a % b;
            a = b;
            b = rest;
            while ((Valormdc1 != 1) || (Valormdc2 != 1)) {
              int mdc1 = Valormdc1.toInt();
              int mdc2 = Valormdc2.toInt();
              while ((Valormdc1 % div != 0) && (Valormdc2 % div != 0)) {
                div++;
              }
              if ((Valormdc1 % div == 0) && (Valormdc2 % div == 0)) {
                resultMdc = resultMdc + "${mdc1}" + ", " + "${mdc2}" + " | " + "${div}" + " - Ok" + "\n";
                Valormdc1 = Valormdc1 / div;
                Valormdc2 = Valormdc2 / div;
                print("$Valormdc1" + " " + "$Valormdc2");
              } else if (((Valormdc1 % div == 0) && (Valormdc2 % div != 0))) {
                resultMdc = resultMdc + "${mdc1}" + ", " + "${mdc2}" + " | " + "${div}" + "\n";
                Valormdc1 = Valormdc1 / div;
              } else if (((Valormdc1 % div != 0) && (Valormdc2 % div == 0))) {
                resultMdc = resultMdc + "${mdc1}" + ", " + "${mdc2}" + " | " + "${div}" + "\n";
                Valormdc2 = Valormdc2 / div;
              }
              if (((Valormdc1 == 1) && (Valormdc2 == 1))) {
                int mdc11 = Valormdc1.toInt();
                int mdc22 = Valormdc2.toInt();
                div = 1;
                resultMdc = resultMdc + "${mdc11}" + ", " + "${mdc22}" + " | " + "${div}" + " - Ok" + "\n";
              }
            }
          }
          resultMdc1 = resultMdc1 +
              "Os valores a serem utilizados, serão os que estão com o símbolo de Ok ao lado." +
              " Multiplicando todos esses valores, temos o valor do MDC: " +
              "${a}" +
              "\n";
        }
      
  }
}