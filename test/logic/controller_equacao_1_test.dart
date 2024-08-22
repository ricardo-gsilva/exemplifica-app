import 'package:exemplifica/controller/controller_equacao_1.dart';
import 'package:test/test.dart';

void main() {
  ControllerEquacao1 equacao1 = ControllerEquacao1.instance;
  group("Testar inicialização, incremento e decremento:", () {
    test(
      "Testando reset de campos da calculadora de Equação de 1 Grau",
      () {
        equacao1.resultEq1_1 = "Teste";
        equacao1.visible = true;
        equacao1.val1.text = "5";
        equacao1.val2.text = "6";
        equacao1.resetCampos();
        expect(equacao1.resultEq1_1, "");
        expect(equacao1.visible, false);
        expect(equacao1.val1.text, "");
        expect(equacao1.val2.text, "");
      },
    );

    test(
      "Testando verificação de campos na calculadora de Equação de 1 Grau",
      () {
        equacao1.val1.text = "";
        equacao1.val2.text = "";
        equacao1.verificarCampos();

        expect(equacao1.resultEq1_1, "Por favor, preencha os campos!");
        expect(equacao1.visible, true);

        equacao1.val1.text = "2";
        equacao1.val2.text = "3";
        equacao1.verificarCampos();
        var teste = equacao1.calcular;
        expect(teste, equacao1.calcular);
      },
    );

    test(
      "Testando resultado do metodo calcular",
      () {
        double a = double.parse(equacao1.val1.text);
        double b = double.parse(equacao1.val2.text);
        a = 6;
        b = 16;
        equacao1.calcular();
        
        String valorX = equacao1.valorX(a, b);
        expect(valorX, "2.67");
      },
    );
  });
}
