import 'package:flutter/material.dart';

class ControllerMmc {
  static ControllerMmc? _instance;

  ControllerMmc._();

  static get instance {
    return _instance ??= ControllerMmc._();
  }

  TextEditingController val1 = TextEditingController();
  TextEditingController val2 = TextEditingController();
  String resultMmc = "";
  String resultMmc1 = "";
  bool visible = false;

  double valormmc1 = 0;
  double valormmc2 = 0;
  double div = 0;
  double cache = 0;
  int valmmc1 = 0;
  int valmmc2 = 0;
  int divi = 0;
  int cachei = 0;

  void resetCampos() {
    visible = false;
    val1.clear();
    val2.clear();
    resultMmc = "";
    resultMmc1 = "";
  }

  void resetResponse() {
    resultMmc = "";
    resultMmc1 = "";
  }

  void verificarCampos() {
    visible = true;
    if (val1.text.isEmpty || val2.text.isEmpty) {      
      resultMmc = "Por favor, preencha os campos!\nUtilize valores até 99999!";
      resultMmc1 = "";
    } else {
      resetResponse();
      calcularMmc();
    }
  }

  void calcularMmc() {
    visible = true;
    valormmc1 = double.parse(val1.text);
    valormmc2 = double.parse(val2.text);
    div = 2;
    cache = 1;
    valmmc1 = valormmc1.toInt();
    valmmc2 = valormmc2.toInt();
    divi = div.toInt();
    cachei = cache.toInt();

    while ((valormmc1 != 1) || (valormmc2 != 1)) {
      while ((valormmc1 % div != 0) && (valormmc2 % div != 0)) {
        div++;
        divi = div.toInt();
      }
      if ((valmmc1 % div == 0) && (valmmc2 % div == 0)) {
        resultMmc =
            resultMmc + "$valmmc1" + ", " + "$valmmc2" + " | " + "$divi" + "\n";
        valormmc1 = valormmc1 / div;
        valmmc1 = valormmc1.toInt();
        valormmc2 = valormmc2 / div;
        valmmc2 = valormmc2.toInt();
      } else if (((valormmc1 % div == 0) && (valormmc2 % div != 0))) {
        resultMmc =
            resultMmc + "$valmmc1" + ", " + "$valmmc2" + " | " + "$divi" + "\n";
        valormmc1 = valormmc1 / div;
        valmmc1 = valormmc1.toInt();
      } else if (((valormmc1 % div != 0) && (valormmc2 % div == 0))) {
        resultMmc =
            resultMmc + "$valmmc1" + ", " + "$valmmc2" + " | " + "$divi" + "\n";
        valormmc2 = valormmc2 / div;
        valmmc2 = valormmc2.toInt();
      }
      cache *= div;
      cachei = cache.toInt();
    }
    if (((valormmc1 == 1) && (valormmc2 == 1))) {
      div = 1;
      divi = div.toInt();
      resultMmc = resultMmc + "$valmmc1" + ", " + "$valmmc2" + " | " + "\n";
    }
    resultMmc1 =
        "${resultMmc1}Após chegar ao valor 1, multiplique todos os números que resultaram "
        "ao lado da barra lateral.\n\n"
        "Multiplicando todos os valores utilizados para fatoração, temos o valor do MMC: $cachei \n";
  }
}
