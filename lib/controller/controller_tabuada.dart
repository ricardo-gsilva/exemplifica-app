import 'package:exemplifica/domain/usecase/control_field_with_label.dart';
import 'package:flutter/material.dart';

class ControllerTabuada implements ControlFieldWithLabel {
  static ControllerTabuada? _instance;

  ControllerTabuada._();

  static get instance {
    _instance ??= ControllerTabuada._();
    return _instance;
  }

  TextEditingController nTabuada = TextEditingController();

  String infoText = "";
  String dica = "";
  int i = 0;
  int val = 0; 
  
  @override
  void resetCampos() {
    nTabuada.clear();
    infoText = "";
    dica = "";
  }
  
  @override
  void verificarCampos() {
    if (nTabuada.text.isEmpty) {
      infoText = "Por favor, preencha os campos!";
    } else {
      infoText = '';
      dica = '';
      calcular();
    }
  }

  @override
  void calcular() {
    val = int.parse(nTabuada.text);
    if (val > 99999) {
      infoText = "Informe um novo valor menor ou igual a 99999!";
    } else {
      for (i = 0; i <= 10; i++) {
        infoText = "$infoText $val x $i = ${(val * i)} \n";
        dica =
            "Obs: Lembre-se de como funciona a multiplicação e entenderá os resultados da tabuada. Um valor 2 x 3 = 6"
            " é o mesmo que 2 + 2 + 2 = 6. O primeiro número é o valor da tabuada e o segundo é a quantidade de vezes que é"
            " somado por ele mesmo.";
      }
    }
  }
  
  @override
  List<String> responseList() {
    return [infoText, dica];
  }
  
  @override
  List<TextEditingController> controllerList() {
    return [nTabuada];
  }
  
  @override
  List<String> labelList() {
    return ["Valor:"];
  }
}
