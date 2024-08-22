
import 'package:exemplifica/controller/controller_fatorial.dart';
import 'package:test/test.dart';

void main(){
  ControllerFatorial fatorial = ControllerFatorial.instance;
  group("Testes unitários para calculadora Fatorial", () {
    test("Teste para resetar os campos", () {
      fatorial.val1.text = "Teste";
      fatorial.visible = true;
      fatorial.infoFatorial = "Teste";
      fatorial.resultFat = "Teste";
      fatorial.resultFinal = "Teste";

      fatorial.resetCampos();
      expect(fatorial.val1.text, "");
      expect(fatorial.visible, false);
      expect(fatorial.resultFat, "");
      expect(fatorial.resultFinal, "");
      expect(fatorial.infoFatorial, "");
    });

    test("teste para verificar preenchimento dos campos", () {
      fatorial.val1.text = "";
      fatorial.verificarCampos();
      expect(fatorial.resultFat, "Por favor, preencha o campo com um valor!\n\n"
              "Obs: Devido a exigência de processamento, não faremos calculos"
              " com valores acima de 14.");
      expect(fatorial.visible, true);
    });
    group("Teste para os calculos de Fatorial", () {
      test("Fatorial igual a 0", () {
        fatorial.val1.text = "0";
        fatorial.calcular();
        expect(fatorial.resultFat, "Obs: O valor fatorial de 0 será sempre o número 1.");
      });

      test("Fatorial fatorial maior do que 14", () {
        fatorial.val1.text = "15";
        fatorial.calcular();
        expect(fatorial.resultFat, "Devido a exigência de processamento, não faremos calculos"
              " com valores acima de 14.");
      });

      test("Calcular fatorial", () {
        fatorial.val1.text = "3";
        fatorial.calcular();
        expect(fatorial.c, 6);
      });
    });
    
  },);
}