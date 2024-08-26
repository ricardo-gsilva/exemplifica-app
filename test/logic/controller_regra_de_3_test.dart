import 'package:exemplifica/controller/controller_regra_de_3.dart';
import 'package:test/test.dart';

void main(){
  ControllerRegraDe3 regraDe3 = ControllerRegraDe3.instance;

  group("Testes unitários da calculadora de regra de 3", () {

    test("Teste para resetar campos", () {
    regraDe3.visible = true;
    regraDe3.val1.text = "Teste";
    regraDe3.val2.text = "Teste";
    regraDe3.val3.text = "Teste";
    regraDe3.resultRegra3 = "Teste";

    regraDe3.resetCampos();

    expect(regraDe3.visible, false);
    expect(regraDe3.val1.text, "");
    expect(regraDe3.val2.text, "");
    expect(regraDe3.val3.text, "");
    expect(regraDe3.resultRegra3, "");
    },);

    test("Teste verificar preenchimento dos campos", () {
      regraDe3.val1.text = "";
      regraDe3.val2.text = "";
      regraDe3.val3.text = "";

      regraDe3.verificarCampos();

      expect(regraDe3.resultRegra3, "Por favor, preencha os campos!");

      regraDe3.val1.text = "5";
      regraDe3.val2.text = "4";
      regraDe3.val3.text = "3";

      regraDe3.verificarCampos();

      expect(regraDe3.visible, true);
    },);

    test("Teste para efetuar cálculo da regra de 3", () {
      regraDe3.val1.text = "6";
      regraDe3.val2.text = "3";
      regraDe3.val3.text = "2";

      regraDe3.calcular();

      expect(regraDe3.resultf, "1");
    },);
  },);

}