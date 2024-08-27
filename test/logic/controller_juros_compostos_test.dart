import 'package:exemplifica/controller/controller_juros_compostos.dart';
import 'package:flutter/material.dart';
import 'package:test/test.dart';

void main() {
  ConstrollerJurosCompostos jurosCompostos = ConstrollerJurosCompostos.instance;
  group(
    "Testes da calculadora de Juros Compostos",
    () {
      test("Testando reset de campos", () {
        jurosCompostos.c.text = "Teste";
        jurosCompostos.i.text = "Teste";
        jurosCompostos.t.text = "Teste";
        jurosCompostos.resultjC = "Teste";
        jurosCompostos.resultjC_1 = "Teste";

        jurosCompostos.resetCampos();
        expect(jurosCompostos.c.text, "");
        expect(jurosCompostos.t.text, "");
        expect(jurosCompostos.i.text, "");
        expect(jurosCompostos.resultjC, "");
        expect(jurosCompostos.resultjC_1, "");
      });

      test("Testando preenchimento dos campos", () {
        jurosCompostos.c.text = "";
        jurosCompostos.i.text = "";
        jurosCompostos.t.text = "";

        jurosCompostos.verificarCampos();

        expect(jurosCompostos.resultjC,
            "Um ou mais campos estão vazios. Preencha todos os campos para efetuar o cálculo!");
        expect(jurosCompostos.resultjC_1, "");
      });

      test(
        "Testando calculo dos juros compostos",
        () {
          jurosCompostos.c.text = "8";
          jurosCompostos.i.text = "5";
          jurosCompostos.t.text = "4";

          jurosCompostos.calcular();

          expect(jurosCompostos.rjuros, "R\$1.72");
        },
      );

      test(
        "Testando lista de respostas da calculadora de Juros Compostos",
        () {
          jurosCompostos.c.text = "8";
          jurosCompostos.i.text = "5";
          jurosCompostos.t.text = "4";

          jurosCompostos.calcular();

          expect(jurosCompostos.responseList(), [
            jurosCompostos.resultjC,
            jurosCompostos.resultjC_1,
          ]);
        },
      );

      test(
        "Testando lista de controllers da calculadora de Juros Compostos",
        () {
          List<TextEditingController> listController = [jurosCompostos.c, jurosCompostos.i, jurosCompostos.t];

          expect(listController, jurosCompostos.controllerList());
        },
      );

      test(
        "Testando lista de labels da calculadora de Juros Compostos",
        () {
          List<String> listLabels = ["Capital:", "Taxa:", "Meses:"];

          expect(listLabels, jurosCompostos.labelList());
        },
      );
    },
  );
}
