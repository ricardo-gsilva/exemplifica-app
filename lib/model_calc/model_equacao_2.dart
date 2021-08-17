import 'dart:math';

import 'package:exemplifica_git/ad_mob/ad_mob.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ModelEquacao2 {

  final AdMob adMob = AdMob();

    TextEditingController val1 = TextEditingController();
    TextEditingController val2 = TextEditingController();
    TextEditingController val3 = TextEditingController();

    String resultEq2 = "";
    String resultEq2_1 = "";
    String resultEq2_2 = "";
    String resultEq2_3 = "";
    String resultEq2_4 = "";

    void resetCampos(){      
        val1.text = "";
        val2.text = "";
        val3.text = "";
        resultEq2 = "";
        resultEq2_1 = "";
        resultEq2_2 = "";
        resultEq2_3 = "";
        resultEq2_4 = "";
    }
    
    void verificarCampo(){
    if (val1.text.isEmpty || val2.text.isEmpty || val3.text.isEmpty){
      resultEq2 = "Por favor, preencha os campos!";
    } else {
      equacao2();
      adMob.showInstersticial();
    }
  }

    void equacao2(){      
        if ((val1.text.isEmpty) || (val2.text.isEmpty) || (val3.text.isEmpty)) {
          resultEq2 = "Por favor preenche com um valor até 99999!" + "\n";
        } else {
          double a = double.parse(val1.text);
          double b = double.parse(val2.text);
          double c = double.parse(val3.text);
          double delta = pow(b, 2) - 4 * a * c;
          double x1 = (((-1 * b) + sqrt(delta)) / (2 * a));
          double x2 = (((-1 * b) - sqrt(delta)) / (2 * a));
          num pot = pow(b, 2);
          double fac = -4 * a * c;
          double a_1 = (2 * a);
          double b_1 = (-1 * b);
          double raiz_delta_x1 = sqrt(delta);
          double raiz_delta_x2 = sqrt(delta);
          double b_raiz_x1 = ((-1 * b) + sqrt(delta));
          double b_raiz_x2 = ((-1 * b) - sqrt(delta));        
        
          if (a == 0) {
            resultEq2 = "O valor de 'a' não pode ser 0." + "\n";
          } 

          if (delta < 0) {  

            NumberFormat dfEq2 = new NumberFormat ("0");
            NumberFormat dfEq2_1 = new NumberFormat ("");

            String Eq2_a = "";
            String Eq2_b = "";
            String Eq2_c = "";
            String Eq2_delta = "";
            String Eq2_pot = "";
            String Eq2_fac = ""; 

          if (a.floor() >= 0) {
            Eq2_a = dfEq2_1.format(a);
          } else {
            Eq2_a = dfEq2_1.format(a);
          }
          if (b.floor() >= 0) {
            Eq2_b = dfEq2.format(b);
          } else {
            Eq2_b = dfEq2_1.format(b);
          }
          if (c.floor() >= 0) {
            Eq2_c = dfEq2.format(c);
          } else {
            Eq2_c = dfEq2_1.format(c);
          }
          if (pot.floor() >= 0) {
            Eq2_pot = dfEq2.format(pot);
          } else {
            Eq2_pot = dfEq2_1.format(pot);
          }
          if (fac.floor() >= 0) {
            Eq2_fac = dfEq2.format(fac);
          } else {
            Eq2_fac = dfEq2_1.format(fac);
          }
          if (delta.floor() >= 0) {
            Eq2_delta = dfEq2.format(delta);
          } else {
            Eq2_delta = dfEq2_1.format(delta);
          }

            resultEq2 = "Δ = (b)² - 4 * a * c" + "\n" +
            "Δ" + " = " + "("+"${Eq2_b}"+")"+"²" + " -4" + " * " + "${Eq2_a}" + " * " + "${Eq2_c}" + "\n" +
            "Δ" + " = " + "${Eq2_pot}" + " " + "${Eq2_fac}" + "\n" 
            "Δ" + " = " + "${Eq2_delta}";
            
            resultEq2_1 =
            "O valor de Delta é negativo. Portanto, não existem raízes reais!" + "\n";               
          
          } else {
          
          //Formatação
          NumberFormat dfEq2 = new NumberFormat ("0");
          NumberFormat dfEq2_7 = new NumberFormat ("+ 0");
          NumberFormat dfEq2_1 = new NumberFormat ("");
          NumberFormat dfEq2_2 = new NumberFormat ("- 0");
          NumberFormat dfEq2_3 = new NumberFormat ("0.00");
          NumberFormat dfEq2_4 = new NumberFormat (" + 0.0000");
          NumberFormat dfEq2_5 = new NumberFormat (" - 0.0000");
          NumberFormat dfEq2_6 = new NumberFormat (" 0.0000");

          String Eq2_a = "";
          String Eq2_b = "";
          String Eq2_c = "";
          String Eq2_delta = "";
          String Eq2_pot = "";
          String Eq2_fac = "";
          String Eq2_a_1 = "";
          String Eq2_b_1 = "";
          String Eq2_b_raiz_x1 = "";
          String Eq2_b_raiz_x2 = "";
          String Eq2_raiz_delta_x1 = "";
          String Eq2_raiz_delta_x2 = "";
          String Eq2_x1 = "";
          String Eq2_x2 = "";
          
          if (a.floor() >= 0) {
            Eq2_a = dfEq2_1.format(a);
          } else {
            Eq2_a = dfEq2_1.format(a);
          }
          if (b.floor() >= 0) {
            Eq2_b = dfEq2.format(b);
          } else {
            Eq2_b = dfEq2_1.format(b);
          }
          if (c.floor() >= 0) {
            Eq2_c = dfEq2.format(c);
          } else {
            Eq2_c = dfEq2_1.format(c);
          }
          if (pot.floor() >= 0) {
            Eq2_pot = dfEq2.format(pot);
          } else {
            Eq2_pot = dfEq2_1.format(pot);
          }
          if (fac.floor() >= 0) {
            Eq2_fac = dfEq2.format(fac);
          } else {
            Eq2_fac = dfEq2_1.format(fac);
          }
          if (delta.floor() >= 0) {
            Eq2_delta = dfEq2.format(delta);
          } else {
            Eq2_delta = dfEq2_1.format(delta);
          }

          if (a_1.floor() >= 0) {
            Eq2_a_1 = dfEq2_1.format(a_1);
          } else {
            Eq2_a_1 = dfEq2_1.format(a_1);
          }
          if (b_1.floor() >= 0) {
            Eq2_b_1 = dfEq2.format(b_1);
          } else {
            Eq2_b_1 = dfEq2_1.format(b_1);
          }
          if (raiz_delta_x1 == raiz_delta_x1.floor()) {
            Eq2_raiz_delta_x1 = dfEq2_7.format(raiz_delta_x1);
          } else {
            Eq2_raiz_delta_x1 = dfEq2_4.format(raiz_delta_x1);
          }
          if (b_raiz_x1 == b_raiz_x1.floor()) {
            Eq2_b_raiz_x1 = dfEq2_1.format(b_raiz_x1);
          } else {
            Eq2_b_raiz_x1 = dfEq2_6.format(b_raiz_x1);
          }
          if (x1 == x1.floor()) {
            Eq2_x1 = dfEq2_1.format(x1);
          } else {
            Eq2_x1 = dfEq2_6.format(x1);
          }
          if (b_raiz_x2 == b_raiz_x2.floor()) {
            Eq2_b_raiz_x2 = dfEq2_1.format(b_raiz_x2);
          } else {
            Eq2_b_raiz_x2 = dfEq2_6.format(b_raiz_x2);
          }
          if (x2 == x2.floor()) {
            Eq2_x2 = dfEq2_1.format(x2);
          } else {
            Eq2_x2 = dfEq2_6.format(x2);
          }
          if (raiz_delta_x2 == raiz_delta_x2.floor()) {
            Eq2_raiz_delta_x2 = dfEq2_2.format(raiz_delta_x2);
          } else {
            Eq2_raiz_delta_x2 = dfEq2_5.format(raiz_delta_x2);
          }

          //Impressão Delta
          resultEq2 = "Δ = (b)² - 4 * a * c" + "\n" +
            "Δ" + " = " + "("+"${Eq2_b}"+")"+"²" + " -4" + " * " + "${Eq2_a}" + " * " + "${Eq2_c}" + "\n" +
            "Δ" + " = " + "${Eq2_pot}" + " " + "${Eq2_fac}" + "\n" 
            "Δ" + " = " + "${Eq2_delta}"; 

          //______________________________________________________________________                    

          if (delta == 0) {
              resultEq2_1 =
              "O valor de Delta é 0. Portanto, existe uma raiz real!" + "\n";

              resultEq2_2 =  "x = – b ± √Δ / 2.a" + "\n" +
                  "\n" +
                  "x1" + " = " + "-" + "(" + "${Eq2_b}" + ")" + " + " + "√" + "${Eq2_delta}" + " / " + "(" + "2" + " * " + "${Eq2_a}" + ")" + "\n" +
                  "x1" + " = " + "(" + "${Eq2_b_1}" + " " + "${Eq2_raiz_delta_x1}" + ")" + " / " + "${Eq2_a_1}" + "\n" +
                  "x1" + " = " + "${Eq2_b_raiz_x1}" + " / " + "${Eq2_a_1}" + "\n" +
                  "x1" + " = " + "${Eq2_x1}" + "\n";

              resultEq2_3 =
                  "x2" + " = " + "-" + "(" + "${Eq2_b}" + ")" + " - " + "√" + "${Eq2_delta}" + " / " + "(" + "2" + " * " + "${Eq2_a}" + ")" + "\n" +
                  "x2" + " = " + "(" + "${Eq2_b_1}" + " " + "${Eq2_raiz_delta_x2}" + ")" + " / " + "${Eq2_a_1}" + "\n" +
                  "x2" + " = " + "${Eq2_b_raiz_x2}" + " / " + "${Eq2_a_1}" + "\n" +
                  "x2" + " = " + "${Eq2_x2}" + "\n";

              resultEq2_4 = "As raízes reais encontradas são: " + "\n"
                  + "x1 = " +"${Eq2_x1}" + " e " + "x2 = " + "${Eq2_x2}" + "\n";
            } else {
              resultEq2_1 = "O valor de Delta é positivo. Portanto, existem duas raízes reais!" +
                      "\n";

              resultEq2_2 = "x = – b ± √Δ / 2.a" + "\n" +
                  "\n" +
                  "x1" + " = " + "(" + "-" + "(" + "${Eq2_b}" + ")" + " + " + "√" + "${Eq2_delta}" + ")" + " / " + "(" + "2" + " * " + "${Eq2_a}" + ")" + "\n" +
                  "x1" + " = " + "(" + "${Eq2_b_1}" + " " + "${Eq2_raiz_delta_x1}" + ")" + " / " + "${Eq2_a_1}" + "\n" +
                  "x1" + " = " + "${Eq2_b_raiz_x1}" + " / " + "${Eq2_a_1}" + "\n" +
                  "x1" + " = " + "${Eq2_x1}" + "\n";

              resultEq2_3 =
                  "x2" + " = " + "(" + "-" + "(" + "${Eq2_b}" + ")" + " - " + "√" + "${Eq2_delta}" + ")" + " / " + "(" + "2" + " * " + "${Eq2_a}" + ")" + "\n" +
                      "x2" + " = " + "(" + "${Eq2_b_1}" + " " + "${Eq2_raiz_delta_x2}" + ")" + " / " + "${Eq2_a_1}" + "\n" +
                      "x2" + " = " + "${Eq2_b_raiz_x2}" + " / " + "${Eq2_a_1}" + "\n" +
                      "x2" + " = " + "${Eq2_x2}" + "\n";

              resultEq2_4 = "As raízes reais encontradas são: " + "\n"
                  + "x1 = " +"${Eq2_x1}" +  "\n" +
                  " e " + "\n" +
                  "x2 = " + "${Eq2_x2}" + "\n";
            }
          } 
        }
      }
}