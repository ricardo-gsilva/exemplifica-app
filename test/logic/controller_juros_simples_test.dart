import 'package:exemplifica/controller/controller_juros_simples.dart';
import 'package:test/test.dart';

void main() {
  ControllerJurosSimples jurosSimples = ControllerJurosSimples.instance;

  group(
    "Testes unitários da calculadora de Juros Simples",
    () {

      test("Teste do reset de preenchimento de campos", () {
        jurosSimples.visible = true;
        jurosSimples.c.text = "Teste";
        jurosSimples.i.text = "Teste";
        jurosSimples.t.text = "Teste";
        jurosSimples.j.text = "Teste";
        jurosSimples.resultjS = "Teste";
        jurosSimples.resultjS_1 = "Teste";
        jurosSimples.resultjS_2 = "Teste";

        jurosSimples.resetCampos();

        expect(jurosSimples.visible, false);
        expect(jurosSimples.c.text, "");
        expect(jurosSimples.i.text, "");
        expect(jurosSimples.t.text, "");
        expect(jurosSimples.j.text, "");
        expect(jurosSimples.resultjS, "");
        expect(jurosSimples.resultjS_1, "");
        expect(jurosSimples.resultjS_2, "");
      },);

      test("Teste de preenchimento de campos", () {
        jurosSimples.c.text = "5";
        jurosSimples.i.text = "7";
        jurosSimples.t.text = "5";
        jurosSimples.j.text = "1";

        jurosSimples.verificarCampos();

        expect(jurosSimples.resultjS, "Apenas 3 campos devem ser preenchidos.");

        jurosSimples.c.text = "";
        jurosSimples.i.text = "7";
        jurosSimples.t.text = "5";
        jurosSimples.j.text = "";

        jurosSimples.verificarCampos();

        expect(jurosSimples.resultjS, "É necessário que ao menos 3 campos estejam preenchidos.");

        jurosSimples.c.text = "8";
        jurosSimples.i.text = "";
        jurosSimples.t.text = "";
        jurosSimples.j.text = "4";

        jurosSimples.verificarCampos();

        expect(jurosSimples.resultjS, "É necessário que ao menos 3 campos estejam preenchidos.");

        jurosSimples.c.text = "8";
        jurosSimples.i.text = "";
        jurosSimples.t.text = "3";
        jurosSimples.j.text = "";

        jurosSimples.verificarCampos();

        expect(jurosSimples.resultjS, "É necessário que ao menos 3 campos estejam preenchidos.");

        jurosSimples.c.text = "";
        jurosSimples.i.text = "";
        jurosSimples.t.text = "3";
        jurosSimples.j.text = "9";

        jurosSimples.verificarCampos();

        expect(jurosSimples.resultjS, "É necessário que ao menos 3 campos estejam preenchidos.");

        jurosSimples.c.text = "4";
        jurosSimples.i.text = "6";
        jurosSimples.t.text = "";
        jurosSimples.j.text = "";

        jurosSimples.verificarCampos();

        expect(jurosSimples.resultjS, "É necessário que ao menos 3 campos estejam preenchidos.");

        jurosSimples.c.text = "";
        jurosSimples.i.text = "6";
        jurosSimples.t.text = "";
        jurosSimples.j.text = "5";

        jurosSimples.verificarCampos();

        expect(jurosSimples.resultjS, "É necessário que ao menos 3 campos estejam preenchidos.");
      },);

      group("Teste de cálculo de Juros Simples", () {
        test("Teste de cálculo de Juros", () {
          jurosSimples.c.text = "8";
          jurosSimples.i.text = "6";
          jurosSimples.t.text = "2";

          jurosSimples.calcularJuros();

          expect(jurosSimples.fjur, "0.96");
        },);

        test("Teste de cálculo de Capital", () {
          jurosSimples.j.text = "8";
          jurosSimples.i.text = "6";
          jurosSimples.t.text = "2";

          jurosSimples.calcularCapital();

          expect(jurosSimples.fcapital, "66.67");
        },);

        test("Teste de cálculo de Taxa", () {
          jurosSimples.j.text = "8";
          jurosSimples.c.text = "6";
          jurosSimples.t.text = "20";

          jurosSimples.calcularTaxa();

          expect(jurosSimples.ftax, "6.67");
        },);

        test("Teste de cálculo de Tempo", () {
          jurosSimples.j.text = "8000";
          jurosSimples.c.text = "8500";
          jurosSimples.i.text = "2";

          jurosSimples.calcularTempo();

          expect(jurosSimples.fmes, "47.06");
        },);
      },);
    },
  );
}
