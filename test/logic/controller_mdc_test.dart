import 'package:exemplifica/controller/controller_mdc.dart';
import 'package:test/test.dart';

void main(){
  ControllerMdc mdc = ControllerMdc.instance;

  group("Testes unitários para calculadora de MDC", () {

    test("Teste de reset dos campos preenchidos", () {
      mdc.visible = true;
      mdc.val1.text = "Teste";
      mdc.val2.text = "Teste";
      mdc.resultMdc = "Teste";
      mdc.resultMdc1 = "Teste";
      mdc.resultMdc2 = "Teste";

      mdc.resetCampos();

      expect(mdc.visible, false);
      expect(mdc.val1.text, "");
      expect(mdc.val2.text, "");
      expect(mdc.resultMdc, "");
      expect(mdc.resultMdc1, "");
      expect(mdc.resultMdc2, "");
    },);

    test("Teste de preenchimento dos campos", () {
      mdc.val1.text = "";
      mdc.val2.text = "";

      mdc.verificarCampos();

      expect(mdc.resultMdc, "Por favor, preencha os campos.\n Utilize valores até 99999!");
    },);

    test("Teste da calculadora do MDC", () {
      mdc.val1.text = "6";
      mdc.val2.text = "2";

      mdc.calcular();

      expect(mdc.mdc, 2);
    },);
  },);
}