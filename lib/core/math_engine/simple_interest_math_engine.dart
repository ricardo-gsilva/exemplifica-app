import 'package:intl/intl.dart';

class SimpleInterestMathEngine {
  Map<String, String> calculate({
    double? capital,
    double? taxa,
    double? tempo,
    double? juros,
  }) {
    NumberFormat dfInt = NumberFormat("0");
    NumberFormat dfDec = NumberFormat("0.00");
    NumberFormat dfMoney = NumberFormat("R\$0.00");

    String format(double v) {
      if (v == v.floor()) return dfInt.format(v);
      return dfDec.format(v);
    }

    /// CALCULAR JUROS
    if (capital != null && taxa != null && tempo != null) {
      final j = (capital * taxa * tempo) / 100;
      final montante = capital + j;

      String process = """
A fórmula para encontrar o valor em JUROS gerado pelo investimento é:

J = (C * i * t) / 100

J = (${format(capital)} * ${format(taxa)} * ${format(tempo)}) / 100

J = ${(capital * taxa * tempo)} / 100

J = ${format(j)}


O valor de juros encontrado com a taxa de ${format(taxa)}% ao mês,
no período de ${format(tempo)} meses,
com a aplicação de ${dfMoney.format(capital)} é:

${dfMoney.format(j)}

M = C + J

M = ${format(capital)} + ${format(j)}

M = ${format(montante)}

Montante total: ${dfMoney.format(montante)}
""";

      return {"process": process, "tip": ""};
    }

    /// CALCULAR CAPITAL
    if (juros != null && taxa != null && tempo != null) {
      final capitalCalc = (juros * 100) / (taxa * tempo);
      final montante = capitalCalc + juros;

      String process = """
A fórmula para encontrar o CAPITAL é:

C = (J * 100) / (i * t)

C = (${format(juros)} * 100) / (${format(taxa)} * ${format(tempo)})

C = ${format(juros * 100)} / ${format(taxa * tempo)}

C = ${format(capitalCalc)}


Capital necessário: ${dfMoney.format(capitalCalc)}

Montante total:

M = C + J

M = ${format(capitalCalc)} + ${format(juros)}

M = ${format(montante)}

Montante total: ${dfMoney.format(montante)}
""";

      return {"process": process, "tip": ""};
    }

    /// CALCULAR TAXA
    if (juros != null && capital != null && tempo != null) {
      final taxaCalc = (juros * 100) / (capital * tempo);

      String process = """
A fórmula para encontrar a TAXA é:

i = (J * 100) / (C * t)

i = (${format(juros)} * 100) / (${format(capital)} * ${format(tempo)})

i = ${format(juros * 100)} / ${format(capital * tempo)}

i = ${format(taxaCalc)}%

A taxa mensal encontrada é: ${format(taxaCalc)}%
""";

      return {"process": process, "tip": ""};
    }

    /// CALCULAR TEMPO
    if (juros != null && capital != null && taxa != null) {
      final meses = (juros * 100) / (capital * taxa);
      final dias = meses * 30;

      String process = """
A fórmula para encontrar o TEMPO é:

t = (J * 100) / (C * i)

t = (${format(juros)} * 100) / (${format(capital)} * ${format(taxa)})

t = ${format(juros * 100)} / ${format(capital * taxa)}

t = ${format(meses)} meses

Equivalente a ${format(dias)} dias
""";

      return {"process": process, "tip": ""};
    }

    return {"process": "Preencha pelo menos 3 valores.", "tip": ""};
  }
}
