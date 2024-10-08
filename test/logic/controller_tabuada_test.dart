import 'package:exemplifica/controller/controller_tabuada.dart';
import 'package:flutter/material.dart';
import 'package:test/test.dart';

void main() {
  ControllerTabuada tabuada = ControllerTabuada.instance;
  group(
    "Testes unitários da calculadora de tabuada",
    () {
      test(
        "Teste para resetar campos",
        () {
          tabuada.nTabuada.text = "Teste";
          tabuada.infoText = "Teste";
          tabuada.dica = "Teste";

          tabuada.resetCampos();

          expect(tabuada.nTabuada.text, "");
          expect(tabuada.infoText, "");
          expect(tabuada.dica, "");
        },
      );

      test(
        "Teste para verificar preenchimento dos campos",
        () {
          tabuada.nTabuada.text = "";
          tabuada.verificarCampos();

          expect(tabuada.infoText, "Por favor, preencha os campos!");
        },
      );

      test(
        "Teste para efetuar o cálculo",
        () {
          tabuada.nTabuada.text = "100000";
          tabuada.calcular();
          expect(tabuada.infoText,
              "Informe um novo valor menor ou igual a 99999!");

          tabuada.nTabuada.text = "500";
          tabuada.calcular();
        },
      );

      test(
        "Testando lista de respostas da calculadora de Tabuada",
        () {
          tabuada.nTabuada.text = "8";

          tabuada.calcular();

          expect(tabuada.responseList(), [
            tabuada.infoText,
            tabuada.dica
          ]);
        },
      );

      test(
        "Testando lista de controllers da calculadora de Tabuada",
        () {
          List<TextEditingController> listController = [tabuada.nTabuada];

          expect(listController, tabuada.controllerList());
        },
      );

      test(
        "Testando lista de labels da calculadora de Tabuada",
        () {
          List<String> listLabels = ["Valor:"];
          expect(listLabels, tabuada.labelList());
        },
      );
    },
  );
}
