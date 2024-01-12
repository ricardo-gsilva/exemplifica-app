import 'dart:math';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ModelEquacao2 {
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
          double raizDeltaX1 = sqrt(delta);
          double raizDeltaX2 = sqrt(delta);
          double bRaizX1 = ((-1 * b) + sqrt(delta));
          double bRaizX2 = ((-1 * b) - sqrt(delta));
        
          if (a == 0) {
            resultEq2 = "O valor de 'a' não pode ser 0." + "\n";
          } 

          if (delta < 0) {  

            NumberFormat dfEq2 = new NumberFormat ("0");
            NumberFormat dfEq2_1 = new NumberFormat ("");

            String eq2A = "";
            String eq2B = "";
            String eq2C = "";
            String eq2Delta = "";
            String eq2Pot = "";
            String eq2Fac = ""; 

          if (a.floor() >= 0) {
            eq2A = dfEq2_1.format(a);
          } else {
            eq2A = dfEq2_1.format(a);
          }
          if (b.floor() >= 0) {
            eq2B = dfEq2.format(b);
          } else {
            eq2B = dfEq2_1.format(b);
          }
          if (c.floor() >= 0) {
            eq2C = dfEq2.format(c);
          } else {
            eq2C = dfEq2_1.format(c);
          }
          if (pot.floor() >= 0) {
            eq2Pot = dfEq2.format(pot);
          } else {
            eq2Pot = dfEq2_1.format(pot);
          }
          if (fac.floor() >= 0) {
            eq2Fac = dfEq2.format(fac);
          } else {
            eq2Fac = dfEq2_1.format(fac);
          }
          if (delta.floor() >= 0) {
            eq2Delta = dfEq2.format(delta);
          } else {
            eq2Delta = dfEq2_1.format(delta);
          }

            resultEq2 = "Δ = (b)² - 4 * a * c" + "\n" +
            "Δ" + " = " + "("+"$eq2B"+")"+"²" + " -4" + " * " + "$eq2A" + " * " + "$eq2C" + "\n" +
            "Δ" + " = " + "$eq2Pot" + " " + "$eq2Fac" + "\n" 
            "Δ" + " = " + "$eq2Delta";
            
            resultEq2_1 =
            "O valor de Delta é negativo. Portanto, não existem raízes reais!" + "\n";               
          
          } else {
          
          //Formatação
          NumberFormat dfEq2 = new NumberFormat ("0");
          NumberFormat dfEq2_7 = new NumberFormat ("+ 0");
          NumberFormat dfEq2_1 = new NumberFormat ("");
          NumberFormat dfEq2_2 = new NumberFormat ("- 0");
          NumberFormat dfEq2_4 = new NumberFormat (" + 0.0000");
          NumberFormat dfEq2_5 = new NumberFormat (" - 0.0000");
          NumberFormat dfEq2_6 = new NumberFormat (" 0.0000");

          String eq2A = "";
          String eq2B = "";
          String eq2C = "";
          String eq2Delta = "";
          String eq2Pot = "";
          String eq2Fac = "";
          String eq2A1 = "";
          String eq2B1 = "";
          String eq2BRaizX1 = "";
          String eq2BRaizX2 = "";
          String eq2RaizDeltaX1 = "";
          String eq2RaizDeltaX2 = "";
          String eq2X1 = "";
          String eq2X2 = "";
          
          if (a.floor() >= 0) {
            eq2A = dfEq2_1.format(a);
          } else {
            eq2A = dfEq2_1.format(a);
          }
          if (b.floor() >= 0) {
            eq2B = dfEq2.format(b);
          } else {
            eq2B = dfEq2_1.format(b);
          }
          if (c.floor() >= 0) {
            eq2C = dfEq2.format(c);
          } else {
            eq2C = dfEq2_1.format(c);
          }
          if (pot.floor() >= 0) {
            eq2Pot = dfEq2.format(pot);
          } else {
            eq2Pot = dfEq2_1.format(pot);
          }
          if (fac.floor() >= 0) {
            eq2Fac = dfEq2.format(fac);
          } else {
            eq2Fac = dfEq2_1.format(fac);
          }
          if (delta.floor() >= 0) {
            eq2Delta = dfEq2.format(delta);
          } else {
            eq2Delta = dfEq2_1.format(delta);
          }

          if (a_1.floor() >= 0) {
            eq2A1 = dfEq2_1.format(a_1);
          } else {
            eq2A1 = dfEq2_1.format(a_1);
          }
          if (b_1.floor() >= 0) {
            eq2B1 = dfEq2.format(b_1);
          } else {
            eq2B1 = dfEq2_1.format(b_1);
          }
          if (raizDeltaX1 == raizDeltaX1.floor()) {
            eq2RaizDeltaX1 = dfEq2_7.format(raizDeltaX1);
          } else {
            eq2RaizDeltaX1 = dfEq2_4.format(raizDeltaX1);
          }
          if (bRaizX1 == bRaizX1.floor()) {
            eq2BRaizX1 = dfEq2_1.format(bRaizX1);
          } else {
            eq2BRaizX1 = dfEq2_6.format(bRaizX1);
          }
          if (x1 == x1.floor()) {
            eq2X1 = dfEq2_1.format(x1);
          } else {
            eq2X1 = dfEq2_6.format(x1);
          }
          if (bRaizX2 == bRaizX2.floor()) {
            eq2BRaizX2 = dfEq2_1.format(bRaizX2);
          } else {
            eq2BRaizX2 = dfEq2_6.format(bRaizX2);
          }
          if (x2 == x2.floor()) {
            eq2X2 = dfEq2_1.format(x2);
          } else {
            eq2X2 = dfEq2_6.format(x2);
          }
          if (raizDeltaX2 == raizDeltaX2.floor()) {
            eq2RaizDeltaX2 = dfEq2_2.format(raizDeltaX2);
          } else {
            eq2RaizDeltaX2 = dfEq2_5.format(raizDeltaX2);
          }

          //Impressão Delta
          resultEq2 = "Δ = (b)² - 4 * a * c" + "\n" +
            "Δ" + " = " + "("+"$eq2B"+")"+"²" + " -4" + " * " + "$eq2A" + " * " + "$eq2C" + "\n" +
            "Δ" + " = " + "$eq2Pot" + " " + "$eq2Fac" + "\n" 
            "Δ" + " = " + "$eq2Delta"; 

          //______________________________________________________________________                    

          if (delta == 0) {
              resultEq2_1 =
              "O valor de Delta é 0. Portanto, existe uma raiz real!" + "\n";

              resultEq2_2 =  "x = – b ± √Δ / 2.a" + "\n" +
                  "\n" +
                  "x1" + " = " + "-" + "(" + "$eq2B" + ")" + " + " + "√" + "$eq2Delta" + " / " + "(" + "2" + " * " + "$eq2A" + ")" + "\n" +
                  "x1" + " = " + "(" + "$eq2B1" + " " + "$eq2RaizDeltaX1" + ")" + " / " + "$eq2A1" + "\n" +
                  "x1" + " = " + "$eq2BRaizX1" + " / " + "$eq2A1" + "\n" +
                  "x1" + " = " + "$eq2X1" + "\n";

              resultEq2_3 =
                  "x2" + " = " + "-" + "(" + "$eq2B" + ")" + " - " + "√" + "$eq2Delta" + " / " + "(" + "2" + " * " + "$eq2A" + ")" + "\n" +
                  "x2" + " = " + "(" + "$eq2B1" + " " + "$eq2RaizDeltaX2" + ")" + " / " + "$eq2A1" + "\n" +
                  "x2" + " = " + "$eq2BRaizX2" + " / " + "$eq2A1" + "\n" +
                  "x2" + " = " + "$eq2X2" + "\n";

              resultEq2_4 = "As raízes reais encontradas são: " + "\n"
                  + "x1 = " +"$eq2X1" + " e " + "x2 = " + "$eq2X2" + "\n";
            } else {
              resultEq2_1 = "O valor de Delta é positivo. Portanto, existem duas raízes reais!" +
                      "\n";

              resultEq2_2 = "x = – b ± √Δ / 2.a" + "\n" +
                  "\n" +
                  "x1" + " = " + "(" + "-" + "(" + "$eq2B" + ")" + " + " + "√" + "$eq2Delta" + ")" + " / " + "(" + "2" + " * " + "$eq2A" + ")" + "\n" +
                  "x1" + " = " + "(" + "$eq2B1" + " " + "$eq2RaizDeltaX1" + ")" + " / " + "$eq2A1" + "\n" +
                  "x1" + " = " + "$eq2BRaizX1" + " / " + "$eq2A1" + "\n" +
                  "x1" + " = " + "$eq2X1" + "\n";

              resultEq2_3 =
                  "x2" + " = " + "(" + "-" + "(" + "$eq2B" + ")" + " - " + "√" + "$eq2Delta" + ")" + " / " + "(" + "2" + " * " + "$eq2A" + ")" + "\n" +
                      "x2" + " = " + "(" + "$eq2B1" + " " + "$eq2RaizDeltaX2" + ")" + " / " + "$eq2A1" + "\n" +
                      "x2" + " = " + "$eq2BRaizX2" + " / " + "$eq2A1" + "\n" +
                      "x2" + " = " + "$eq2X2" + "\n";

              resultEq2_4 = "As raízes reais encontradas são: " + "\n"
                  + "x1 = " +"$eq2X1" +  "\n" +
                  " e " + "\n" +
                  "x2 = " + "$eq2X2" + "\n";
            }
          } 
        }
      }
}