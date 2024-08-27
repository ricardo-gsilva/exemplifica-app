import 'package:exemplifica/controller/controller_fatorial.dart';
import 'package:flutter/material.dart';
import 'package:test/test.dart';

void main() {
  ControllerFatorial fatorial = ControllerFatorial.instance;
  group(
    "Testes unitários para calculadora Fatorial",
    () {
      test("Teste para resetar os campos", () {
        fatorial.val1.text = "Teste";
        fatorial.infoFatorial = "Teste";
        fatorial.resultFat = "Teste";
        fatorial.resultFinal = "Teste";

        fatorial.resetCampos();
        expect(fatorial.val1.text, "");
        expect(fatorial.resultFat, "");
        expect(fatorial.resultFinal, "");
        expect(fatorial.infoFatorial, "");
      });

      test("teste para verificar preenchimento dos campos", () {
        fatorial.val1.text = "";
        fatorial.verificarCampos();
        expect(
            fatorial.resultFat,
            "Por favor, preencha o campo com um valor!\n\n"
            "Obs: Devido a exigência de processamento, não faremos calculos"
            " com valores acima de 14.");
      });
      group("Teste para os calculos de Fatorial", () {
        test("Fatorial igual a 0", () {
          fatorial.val1.text = "0";
          fatorial.calcular();
          expect(fatorial.resultFat,
              "Obs: O valor fatorial de 0 será sempre o número 1.");
        });

        test("Fatorial fatorial maior do que 14", () {
          fatorial.val1.text = "15";
          fatorial.calcular();
          expect(
              fatorial.resultFat,
              "Devido a exigência de processamento, não faremos calculos"
              " com valores acima de 14.");
        });

        test("Teste de cálculo do fatorial", () {
          fatorial.val1.text = "3";
          fatorial.calcular();
          expect(fatorial.c, 6);
        });

        test(
          "Testando lista de respostas da calculadora de Fatorial",
          () {
            fatorial.val1.text = "6";

            fatorial.calcular();

            expect(fatorial.responseList(), [
              fatorial.resultFat,
              fatorial.resultFinal,
              fatorial.infoFatorial,
            ]);
          },
        );

        test(
          "Testando lista de controllers da calculadora de Fatorial",
          () {
            List<TextEditingController> listController = [fatorial.val1];

            expect(listController, fatorial.controllerList());
          },
        );

        test(
          "Testando lista de labels da calculadora de Fatorial",
          () {
            List<String> listLabels = ["Fatorial:"];

            expect(listLabels, fatorial.labelList());
          },
        );
      });
    },
  );
}
