import 'dart:math';
import 'package:intl/intl.dart';

class CompoundInterestMathEngine {

  Map<String, String> calculate({
    required double capital,
    required double taxa,
    required double meses,
  }) {

    NumberFormat dfInt = NumberFormat("0");
    NumberFormat dfDec = NumberFormat("0.00");
    NumberFormat dfMoney = NumberFormat("R\$0.00");

    String formatNumber(double v) {
      if (v == v.floor()) return dfInt.format(v);
      return dfDec.format(v);
    }

    final montante = capital * pow(1 + (taxa / 100), meses);
    final juros = montante - capital;

    final tax = taxa / 100;
    final tax2 = tax + 1;
    final tax3 = pow(tax2, meses);

    final rcapital = dfMoney.format(capital);
    final rjuros = dfMoney.format(juros);
    final rmontante = dfMoney.format(montante);

    final fcapital = formatNumber(capital);
    final fmes = formatNumber(meses);
    final ftaxa = formatNumber(taxa);
    final ftaxa2 = formatNumber(tax);
    final ftaxa3 = formatNumber(tax2);
    final ftaxa4 = formatNumber(tax3.toDouble());

    String process = """
Vamos utilizar a fórmula de Juros Compostos para encontrar o montante gerado e então através desse valor encontrar o valor de juros gerado.

Temos o capital no valor de $rcapital, com taxa mensal de $taxa%, no período de $fmes meses.

Aplicando a fórmula temos:

M = C * (1 + (i / 100))^t

M = $fcapital * (1 + ($ftaxa / 100))^t

M = $fcapital * (1 + $ftaxa2)^$fmes

M = $fcapital * ($ftaxa3)^$fmes

M = $fcapital * ($ftaxa4)

M = $rmontante


J = M - C

J = $rmontante - $rcapital

J = $rjuros


O valor de juros gerado é:

$rjuros
""";

    return {
      "process": process,
      "tip": "",
    };
  }
}