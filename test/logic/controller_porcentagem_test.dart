import 'package:exemplifica/controller/controller_porcentagem.dart';
import 'package:flutter/material.dart';
import 'package:test/test.dart';

void main() {
  ControllerPorcentagem porcentagem = ControllerPorcentagem.instance;

  group(
    "Testes unitários para calculadora de Porcentagem",
    () {
      test(
        "Teste para resetar campos",
        () {
          porcentagem.val1.text = "Teste";
          porcentagem.val2.text = "Teste";
          porcentagem.resultPorcent = "Teste";

          porcentagem.resetCampos();

          expect(porcentagem.val1.text, "");
          expect(porcentagem.val2.text, "");
          expect(porcentagem.resultPorcent, "");
        },
      );

      test(
        "Teste para verificar preenchimento dos campos",
        () {
          porcentagem.val1.text = "";
          porcentagem.val2.text = "";

          porcentagem.verificarCampos();

          expect(porcentagem.resultPorcent, "Por favor, preencha os campos!");
        },
      );

      test(
        "Teste para efetuar cálculo de porcentagem",
        () {
          porcentagem.val1.text = "40";
          porcentagem.val2.text = "20";

          porcentagem.calcular();

          expect(porcentagem.resultf, "50");
        },
      );

      test(
        "Testando lista de respostas da calculadora de Porcentagem",
        () {
          porcentagem.val1.text = "8";
          porcentagem.val2.text = "4";

          porcentagem.calcular();

          expect(porcentagem.responseList(), [porcentagem.resultPorcent]);
        },
      );

      test(
        "Testando lista de controllers da calculadora de Porcentagem",
        () {
          List<TextEditingController> listController = [porcentagem.val1, porcentagem.val2];

          expect(listController, porcentagem.controllerList());
        },
      );
    },
  );
}
