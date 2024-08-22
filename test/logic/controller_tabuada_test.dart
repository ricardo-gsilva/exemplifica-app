import 'package:exemplifica/controller/controller_tabuada.dart';
import 'package:test/test.dart';

void main() {
  ControllerTabuada tabuada = ControllerTabuada.instance;
  group(
    "Testes unitários da calculadora de tabuada",
    () {
      test(
        "Teste para resetar campos",
        () {
          tabuada.visible = true;
          tabuada.nTabuada.text = "Teste";
          tabuada.infoText = "Teste";
          tabuada.dica = "Teste";

          tabuada.resetCampos();

          expect(tabuada.visible, false);
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
          expect(tabuada.visible, true);
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
          expect(tabuada.visible, true);
        },
      );
    },
  );
}
