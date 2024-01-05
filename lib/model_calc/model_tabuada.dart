import 'package:exemplifica_git/ad_mob/ad_mob.dart';
import 'package:flutter/material.dart';

class ModelTabuada {   

  // final AdMob adMob = AdMob();

  TextEditingController nTabuada = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String infoText = "";
  String dica = "";

    void verificarCampo() {
      if (nTabuada.text.isEmpty) {
        infoText = "Por favor, preencha os campos!";       
      } else {
        calcular();
        // adMob.showInstersticial();
      }
     
    }

    void resetCampos() {
      nTabuada.text = "";
      infoText = "";
      dica = "";
      formKey = GlobalKey<FormState>();
    }

    void calcular() {      
        int valorTabuada = int.parse(nTabuada.text);
        int i;
        int val = int.parse(nTabuada.text); 
        if (valorTabuada.toString().isEmpty) {
          infoText = "Digite um valor igual ou menor que 50000!" + "\n";
        } else if (valorTabuada > 50000) {
          infoText = "Informe um novo valor menor ou igual a 50000!";
        } else {
          for (i = 0; i <= 10; i++) {
            infoText = infoText +
                "${valorTabuada}" +
                " " +
                "x " +
                "${i}" +
                " = " +
                "${(val * i)}" +
                "\n";
            dica =
                "Obs: Lembre-se de como funciona a multiplicação e entenderá os resultados da tabuada. Um valor 2 x 3 = 6"
                " é o mesmo que 2 + 2 + 2 = 6. O primeiro número é o valor da tabuada e o segundo é a quantidade de vezes que é"
                " somado por ele mesmo.";
          }
        }      
        // adMob.showInstersticial(); 
      
  }
  
}
