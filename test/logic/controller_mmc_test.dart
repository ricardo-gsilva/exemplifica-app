import 'package:exemplifica/controller/controller_mmc.dart';
import 'package:test/test.dart';

void main(){
  ControllerMmc mmc = ControllerMmc.instance;

  group("Testes unitários da calculadora de MMC", () {

    test("Teste para reset de campos", () {
      mmc.visible = true;
      mmc.val1.text = "Teste";
      mmc.val2.text = "Teste";
      mmc.resultMmc = "Teste";
      mmc.resultMmc1 = "Teste";

      mmc.resetCampos();

      expect(mmc.visible, false);
      expect(mmc.val1.text, "");
      expect(mmc.val2.text, "");
      expect(mmc.resultMmc, "");
      expect(mmc.resultMmc1, "");
    },);

    test("Teste para verificar preenchimento de campos", () {
      mmc.val1.text = "";
      mmc.val2.text = "";

      mmc.verificarCampos();
      
      expect(mmc.resultMmc, "Por favor, preencha os campos!\nUtilize valores até 99999!");
    },);

    test("Teste para calcular o mmc", () {
      mmc.val1.text = "6";
      mmc.val2.text = "2";

      mmc.calcular();

      expect(mmc.cachei, 6);
    },);
  },);
}