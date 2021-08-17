import 'package:exemplifica_git/ad_mob/ad_mob.dart';
import 'package:flutter/material.dart';

class ModelMmc {

  final AdMob adMob = AdMob();

  TextEditingController val1 = TextEditingController();
  TextEditingController val2 = TextEditingController();

  String resultMmc = "";
  String resultMmc1 = "";

  void resetCampos() {
      val1.text = "";
      val2.text = "";
      resultMmc = "";
      resultMmc1 = "";
  }

  void verificarCampos(){
    if (val1.text.isEmpty || val2.text.isEmpty){
      resultMmc = "Por favor, preencha os campos!" + "\n"
        "Utilize valores até 99999!";
      resultMmc1 = "";
    } else {
      resultMmc = "";
      resultMmc1 = "";
      mmc();  
      adMob.showInstersticial();
    }
  }

  void mmc(){
      
        double Valormmc1 = double.parse(val1.text);
        double Valormmc2 = double.parse(val2.text);
        double div = 2;
        double cache = 1;
        int valmmc1 = Valormmc1.toInt();
        int valmmc2 = Valormmc2.toInt();
        int divi = div.toInt();
        int cachei = cache.toInt();


        while ((Valormmc1 != 1) || (Valormmc2 != 1)) {
          while ((Valormmc1 % div != 0) && (Valormmc2 % div != 0)) {
            div++;
            divi = div.toInt();
          }
          if ((valmmc1 % div == 0) && (valmmc2 % div == 0)) {
            resultMmc =
                resultMmc + "${valmmc1}" + ", " + "${valmmc2}" + " | " +
                    "${divi}" + "\n";
            Valormmc1 = Valormmc1 / div;
            valmmc1 = Valormmc1.toInt();
            Valormmc2 = Valormmc2 / div;
            valmmc2 = Valormmc2.toInt();
          } else if (((Valormmc1 % div == 0) && (Valormmc2 % div != 0))) {
            resultMmc =
                resultMmc + "${valmmc1}" + ", " + "${valmmc2}" + " | " +
                    "${divi}" + "\n";
            Valormmc1 = Valormmc1 / div;
            valmmc1 = Valormmc1.toInt();
          } else if (((Valormmc1 % div != 0) && (Valormmc2 % div == 0))) {
            resultMmc =
                resultMmc + "${valmmc1}" + ", " + "${valmmc2}" + " | " +
                    "${divi}" + "\n";
            Valormmc2 = Valormmc2 / div;
            valmmc2 = Valormmc2.toInt();
          }
          cache *= div;
          cachei = cache.toInt();
        }
        if (((Valormmc1 == 1) && (Valormmc2 == 1))) {
          div = 1;
          divi = div.toInt();
          resultMmc =
              resultMmc + "${valmmc1}" + ", " + "${valmmc2}" + " | " + "\n";
        }
        resultMmc1 = resultMmc1 +
            "Multiplicando todos os valores utilizados para fatoração, temos o"
                " valor do MMC: " + "${cachei}" + "\n";
  }  

}