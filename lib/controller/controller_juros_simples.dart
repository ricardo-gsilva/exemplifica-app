import 'package:exemplifica/domain/usecase/control_field_with_label.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ControllerJurosSimples implements ControlFieldWithLabel {
  static ControllerJurosSimples? _instance;

  ControllerJurosSimples._();

  static get instance {
    _instance ??= ControllerJurosSimples._();
    return _instance;
  }

  TextEditingController c = TextEditingController();
  TextEditingController i = TextEditingController();
  TextEditingController j = TextEditingController();
  TextEditingController t = TextEditingController();

  String resultjS = "Digite ao menos 3 valores!";
  String resultjS_1 = "";
  String resultjS_2 = "";

  String fmes = "";
  String fdias = "";
  String fjuros = "";
  String fjuros2 = "";
  String fjur = "";
  String fjur2 = "";
  String rjuros = "";
  String rjur = "";
  String rcapital = "";
  String fcapital = "";
  String ftaxa = "";
  String ftax = "";
  String rmontante = "";
  String fmontante = "";
  String fcaptax = "";
  String fcapmes = "";
  String ftaxmes = "";

  //Formtação
  NumberFormat dfJs1 = new NumberFormat("0");
  NumberFormat dfJs2 = new NumberFormat("0.00");
  NumberFormat dfJs3 = new NumberFormat("R\$0.00");

  double capital = 0;
  double meses = 0;
  double taxa = 0;
  double jur2 = 0;
  double jur = 0;
  double montante = 0;
  double juros = 0;
  double cap = 0;
  double juros2 = 0;
  double taxmes = 0;
  double tax = 0;
  double capmes = 0;
  double mes = 0;
  double dias = 0;
  double captax = 0;

  @override
  void resetCampos() {
    c.clear();
    i.clear();
    t.clear();
    j.clear();
    resultjS = "";
    resultjS_1 = "";
    resultjS_2 = "";
  }

  @override
  void verificarCampos() {
    if (j.text.isNotEmpty &&
        c.text.isNotEmpty &&
        t.text.isNotEmpty &&
        i.text.isNotEmpty) {
      resultjS = "Apenas 3 campos devem ser preenchidos.";
      resultjS_1 = "";
      resultjS_2 = "";
    } else if (((j.text.isEmpty) && (c.text.isEmpty)) ||
        ((i.text.isEmpty) && (t.text.isEmpty)) ||
        ((j.text.isEmpty) && (i.text.isEmpty)) ||
        ((i.text.isEmpty) && (c.text.isEmpty)) ||
        ((j.text.isEmpty) && (t.text.isEmpty)) ||
        ((c.text.isEmpty) && (t.text.isEmpty))) {
      resultjS = "É necessário que ao menos 3 campos estejam preenchidos.";
      resultjS_1 = "";
      resultjS_2 = "";
    } else {
      calcular();
    }
  }

  @override
  void calcular() {
    if ((c.text.isNotEmpty) && (i.text.isNotEmpty) && (t.text.isNotEmpty)) {
      calcularJuros();
    } else if ((j.text.isNotEmpty) &&
        (i.text.isNotEmpty) &&
        (t.text.isNotEmpty)) {
      calcularCapital();
    } else if ((j.text.isNotEmpty) &&
        (c.text.isNotEmpty) &&
        (t.text.isNotEmpty)) {
      calcularTaxa();
    } else if ((j.text.isNotEmpty) &&
        (c.text.isNotEmpty) &&
        (i.text.isNotEmpty)) {
      calcularTempo();
    }
  }

  void calcularJuros() {
    capital = double.parse(c.text);
    meses = double.parse(t.text);
    taxa = double.parse(i.text);
    jur2 = (capital * taxa * meses);
    jur = (capital * taxa * meses) / 100;
    montante = capital + jur;

    rjur = dfJs3.format(jur);
    rcapital = dfJs3.format(capital);
    rmontante = dfJs3.format(montante);

    if (taxa == taxa.floor()) {
      ftaxa = dfJs1.format(taxa);
    } else {
      ftaxa = dfJs2.format(taxa);
    }
    if (jur == jur.floor()) {
      fjur = dfJs1.format(jur);
    } else {
      fjur = dfJs2.format(jur);
    }
    if (jur2 == jur2.floor()) {
      fjur2 = dfJs1.format(jur2);
    } else {
      fjur2 = dfJs2.format(jur2);
    }
    if (meses == meses.floor()) {
      fmes = dfJs1.format(meses);
    } else {
      fmes = dfJs2.format(meses);
    }
    if (capital == capital.floor()) {
      fcapital = dfJs1.format(capital);
    } else {
      fcapital = dfJs2.format(capital);
    }
    if (montante == montante.floor()) {
      fmontante = dfJs1.format(montante);
    } else {
      fmontante = dfJs2.format(montante);
    }

    resultjS =
        "A fórmula para encontrar o valor em JUROS gerado pelo investimento é:"
        "\n"
        "J = (C * i * t) / 100"
        "\n";
    resultjS_1 = "J = (${c.text} * ${i.text} * ${t.text}) / 100";
    resultjS_2 = "J = ($fcapital * $ftaxa * $fmes) / 100"
        "\n"
        "J = $fjur2 / 100"
        "\n"
        "J = $jur"
        "\n"
        "\n"
        "O valor de juros encontrado com a taxa de $ftaxa% ao mês, no período de $fmes meses, com a aplicação "
        "de $rcapital, é de: $rjur"
        "\n"
        "e o valor total encontrado através do montante que é a soma do Capital e do Juros é: "
        "\n"
        "\n"
        "M = C + J"
        "\n"
        "M = $fcapital + $fjur"
        "\n"
        "M = $fmontante"
        "\n"
        "O montante total é de $rmontante.";
  }

  void calcularCapital() {
    juros = double.parse(j.text);
    meses = double.parse(t.text);
    taxa = double.parse(i.text);
    cap = (juros * 100) / (taxa * meses);
    montante = cap + juros;
    juros2 = juros * 100;
    taxmes = taxa * meses;

    rmontante = dfJs3.format(montante);
    rjuros = dfJs3.format(juros);
    rcapital = dfJs3.format(cap);

    if (montante == montante.floor()) {
      fmontante = dfJs1.format(montante);
    } else {
      fmontante = dfJs2.format(montante);
    }
    if (cap == cap.floor()) {
      fcapital = dfJs1.format(cap);
    } else {
      fcapital = dfJs2.format(cap);
    }
    if (juros == juros.floor()) {
      fjuros = dfJs1.format(juros);
    } else {
      fjuros = dfJs2.format(juros);
    }
    if (taxa == taxa.floor()) {
      ftaxa = dfJs1.format(taxa);
    } else {
      ftaxa = dfJs2.format(taxa);
    }
    if (meses == meses.floor()) {
      fmes = dfJs1.format(meses);
    } else {
      fmes = dfJs2.format(meses);
    }
    if (juros2 == juros2.floor()) {
      fjuros2 = dfJs1.format(juros2);
    } else {
      fjuros2 = dfJs1.format(juros2);
    }
    if (taxmes == taxmes.floor()) {
      ftaxmes = dfJs1.format(taxmes);
    } else {
      ftaxmes = dfJs2.format(taxmes);
    }

    resultjS =
        "A fórmula para encontrar o valor em juros gerado pelo investimento é:"
        "\n"
        "C = (J * 100) / (i * t)"
        "\n";
    resultjS_1 = "C = (${j.text} * 100) / (${i.text} * ${t.text})";
    resultjS_2 = "C = ($fjuros * 100) / ($ftaxa * $fmes)"
        "\n"
        "C = $fjuros2 / $ftaxmes"
        "\n"
        "C = $fcapital"
        "\n"
        "\n"
        "O valor do capital aplicado para que se tenha $rjuros de juros, com a taxa de $ftaxa% "
        "no período de $fmes meses, é de: $rcapital"
        "\n"
        "\n"
        "E o valor total encontrado através do montante que é a soma do Capital e do Juros é: "
        "\n"
        "\n"
        "M = C + J"
        "\n"
        "M = $fcapital + $fjuros"
        "\n"
        "M = $fmontante"
        "\n"
        "O montante total é de $rmontante.";
  }

  void calcularTaxa() {
    juros = double.parse(j.text);
    meses = double.parse(t.text);
    capital = double.parse(c.text);
    tax = (juros * 100) / (capital * meses);
    juros2 = juros * 100;
    capmes = capital * meses;

    rjuros = dfJs3.format(juros);
    rcapital = dfJs3.format(capital);

    if (juros == juros.floor()) {
      fjuros = dfJs1.format(juros);
    } else {
      fjuros = dfJs2.format(juros);
    }
    if (capital == capital.floor()) {
      fcapital = dfJs1.format(capital);
    } else {
      fcapital = dfJs2.format(capital);
    }
    if (meses == meses.floor()) {
      fmes = dfJs1.format(meses);
    } else {
      fmes = dfJs2.format(meses);
    }
    if (juros2 == juros2.floor()) {
      fjuros2 = dfJs1.format(juros2);
    } else {
      fjuros2 = dfJs1.format(juros2);
    }
    if (capmes == capmes.floor()) {
      fcapmes = dfJs1.format(capmes);
    } else {
      fcapmes = dfJs2.format(capmes);
    }
    if (tax == tax.floor()) {
      ftax = dfJs1.format(tax);
    } else {
      ftax = dfJs2.format(tax);
    }

    resultjS = "A fórmula para encontrar a TAXA é:"
        "\n"
        "i = (J * 100) / (C * t)"
        "\n";
    resultjS_1 = "i = (${j.text} * 100) / (${c.text} * ${t.text})";
    resultjS_2 = "i = ($fjuros * 100) / ($fcapital * $fmes)"
        "\n"
        "i = $fjuros2 / $fcapmes"
        "\n"
        "i = $ftax"
        "\n"
        "\n"
        "A taxa mensal encontrado para o valor aplicado de $rcapital, com rendimento de $rjuros em juros, no período "
        "de $fmes meses, é de: $ftax%.";
  }

  void calcularTempo() {
    capital = double.parse(c.text);
    taxa = double.parse(i.text);
    juros = double.parse(j.text);
    mes = (juros * 100) / (capital * taxa);
    dias = mes * 30;
    juros2 = juros * 100;
    captax = capital * taxa;

    fdias = dfJs1.format(dias);
    rjuros = dfJs3.format(juros);
    rcapital = dfJs3.format(capital);

    if (juros == juros.floor()) {
      fjuros = dfJs1.format(juros);
    } else {
      fjuros = dfJs2.format(juros);
    }
    if (juros2 == juros2.floor()) {
      fjuros2 = dfJs1.format(juros2);
    } else {
      fjuros2 = dfJs1.format(juros2);
    }
    if (mes == mes.floor()) {
      fmes = dfJs1.format(mes);
    } else {
      fmes = dfJs2.format(mes);
    }
    if (capital == capital.floor()) {
      fcapital = dfJs1.format(capital);
    } else {
      fcapital = dfJs2.format(capital);
    }
    if (taxa == taxa.floor()) {
      ftaxa = dfJs1.format(taxa);
    } else {
      ftaxa = dfJs2.format(taxa);
    }
    if (captax == captax.floor()) {
      fcaptax = dfJs1.format(captax);
    } else {
      fcaptax = dfJs2.format(captax);
    }

    resultjS =
        "A fórmula para encontrar o TEMPO necessário para o investimento é:"
        "\n"
        "t = (J * 100) / (C * i)"
        "\n";
    resultjS_1 = "t = (${j.text} * 100) / (${c.text} * ${i.text})";
    resultjS_2 = "t = ($fjuros * 100) / ($fcapital * $ftaxa)"
        "\n"
        "t = $fjuros2 / $fcaptax"
        "\n"
        "t = $fmes"
        "\n\n"
        "O número de meses necessário para gerar o juros de $rjuros, com a aplicação de capital no valor de $rcapital, sob "
        "a taxa mensal de $ftaxa% é: $fmes meses ou o equivalente a $fdias dias.";
  }
  
  @override
  List<String> responseList() {
    return [resultjS, resultjS_1, resultjS_2];
  }
  
  @override
  List<TextEditingController> controllerList() {
    return [c, i, t, j];
  }
  
  @override
  List<String> labelList() {
    return ["Capital:", "Taxa:", "Meses:", "Juros:"];
  }
}
