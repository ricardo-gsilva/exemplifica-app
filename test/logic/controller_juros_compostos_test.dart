import 'package:exemplifica/controller/controller_juros_compostos.dart';
import 'package:test/test.dart';

void main(){
  ConstrollerJurosCompostos jurosCompostos = ConstrollerJurosCompostos.instance;
  group("Testes da calculadora de Juros Compostos", (){

    test("Testando reset de campos", () {
      jurosCompostos.c.text = "Teste";
      jurosCompostos.i.text = "Teste";
      jurosCompostos.t.text = "Teste";
      jurosCompostos.visible = true;
      jurosCompostos.resultjC = "Teste";
      jurosCompostos.resultjC_1 = "Teste";

      jurosCompostos.resetCampos();
      expect(jurosCompostos.visible, false);
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
      jurosCompostos.visible = true;

      jurosCompostos.verificarCampos();

      expect(jurosCompostos.visible, true);
      expect(jurosCompostos.resultjC, "Um ou mais campos estão vazios. Preencha todos os campos para efetuar o cálculo!");
      expect(jurosCompostos.resultjC_1, "");
      
    });

    test("Testando calculo dos juros compostos", () {
      jurosCompostos.c.text = "8";
      jurosCompostos.i.text = "5";
      jurosCompostos.t.text = "4";

      jurosCompostos.calcular();

      expect(jurosCompostos.rjuros, "R\$1.72");
    });
  },);
}