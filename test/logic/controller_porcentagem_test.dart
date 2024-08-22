import 'package:exemplifica/controller/controller_porcentagem.dart';
import 'package:test/test.dart';

void main() {
  ControllerPorcentagem porcentagem = ControllerPorcentagem.instance;

  group(
    "Testes unitários para calculadora de Porcentagem",
    () {
      test(
        "Teste para resetar campos",
        () {
          porcentagem.visible = true;
          porcentagem.val1.text = "Teste";
          porcentagem.val2.text = "Teste";
          porcentagem.resultPorcent = "Teste";

          porcentagem.resetCampos();

          expect(porcentagem.visible, false);
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
    },
  );
}
