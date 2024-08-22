import 'package:exemplifica/controller/controller_equacao_2.dart';
import 'package:test/test.dart';

void main() {
  ControllerEquacao2 equacao2 = ControllerEquacao2.instance;
  group("Testes unitarios de equacao de 2 grua", () {
    test("Testando o reset de variáveis", () {
      equacao2.resultEq2 = "Teste";
      equacao2.resultEq2_1 = "Teste";
      equacao2.resultEq2_2 = "Teste";
      equacao2.resultEq2_3 = "Teste";
      equacao2.resultEq2_4 = "Teste";
      equacao2.visible = true;
      equacao2.val1.text = "Teste";
      equacao2.val2.text = "Teste";
      equacao2.val3.text = "Teste";

      equacao2.resetCampos();
      expect(equacao2.resultEq2, "");
      expect(equacao2.resultEq2_1, "");
      expect(equacao2.resultEq2_2, "");
      expect(equacao2.resultEq2_3, "");
      expect(equacao2.resultEq2_4, "");
      expect(equacao2.visible, false);
      expect(equacao2.val1.text, "");
      expect(equacao2.val2.text, "");
      expect(equacao2.val3.text, "");
    });

    test("Testando verfificação de campos", () {
      equacao2.val1.text = "";
      equacao2.val2.text = "";
      equacao2.val3.text = "";
      equacao2.visible = false;

      equacao2.verificarCampos();

      expect(equacao2.visible, true);
      expect(equacao2.resultEq2, "Por favor, preencha os campos!");
    });

    group("Teste de cálculo", () {
      test("Teste com 'a' igual a 0.", () {
        equacao2.val1.text = "0";
        equacao2.val2.text = "2";
        equacao2.val3.text = "3";
        equacao2.calcular();
        expect(equacao2.resultEq2, "O valor de 'a' não pode ser 0." "\n");
      });

      test("Teste com delta igual a 0.", () {
        equacao2.val1.text = "2";
        equacao2.val2.text = "4";
        equacao2.val3.text = "2";
        equacao2.calcular();
        if (equacao2.delta >= 0) {
          equacao2.deltaMaiorIgualZero();
        }

        expect(equacao2.eq2Delta, "0");
        expect(equacao2.resultEq2_1, "O valor de delta é 0. Portanto, existe uma raiz real.""\n");
        expect(equacao2.eq2X1, "-1");
        expect(equacao2.eq2X2, "-1"); 
      });

      test("Teste com delta maior que 0", () {
        equacao2.val1.text = "2";
        equacao2.val2.text = "5";
        equacao2.val3.text = "2";
        equacao2.calcular();
        if (equacao2.delta >= 0) {
          equacao2.deltaMaiorIgualZero();
        }

        expect(equacao2.eq2Delta, "9");
        expect(equacao2.resultEq2_1, "O valor de Delta é positivo. Portanto, existem duas raízes reais!""\n");
        expect(equacao2.eq2X1, "- 0.5000");
        expect(equacao2.eq2X2, "-2");        
      });

      test("Teste com delta menor do que 0.", () {
        equacao2.val1.text = "24";
        equacao2.val2.text = "5";
        equacao2.val3.text = "2";
        equacao2.calcular();
        if (equacao2.delta < 0) {
          equacao2.deltaMenorQueZero();
        }

        expect(equacao2.eq2Delta, "-167");
        expect(equacao2.resultEq2_1, "O valor de Delta é negativo. Portanto, não existem raízes reais!""\n");
        expect(equacao2.resultEq2_2, "");
        expect(equacao2.resultEq2_3, "");
        expect(equacao2.resultEq2_4, "");        
      });
    });
  });
}
