import 'dart:math';
import 'package:exemplifica/domain/usecase/control_field_with_label.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ConstrollerJurosCompostos implements ControlFieldWithLabel {
  static ConstrollerJurosCompostos? _instance;

  ConstrollerJurosCompostos._();

  static get instance {
    _instance ??= ConstrollerJurosCompostos._();
    return _instance;
  }

  TextEditingController c = TextEditingController();
  TextEditingController i = TextEditingController();
  TextEditingController t = TextEditingController();

  String resultjC = "";
  String resultjC_1 = "";
  String c1 = "";
  String i1 = "";
  String t1 = "";

  bool visible = false;

  String fmes = "";
  String rjuros = "";
  String rcapital = "";
  String fcapital = "";
  String ftaxa = "";
  String ftaxa2 = "";
  String ftaxa3 = "";
  String ftaxa4 = "";
  String rmontante = "";
  String fmontante = "";

  double capital = 0;
  double meses = 0;
  double taxa = 0;
  double montante = 0;
  double juros = 0;
  double tax = 0;
  double tax2 = 0;
  num tax3 = 0;

  //Formtação
  NumberFormat dfJs1 = new NumberFormat("0");
  NumberFormat dfJs2 = new NumberFormat("0.00");
  NumberFormat dfJs3 = new NumberFormat("R\$0.00");

  @override
  void resetCampos() {
    visible = false;
    c.clear();
    i.clear();
    t.clear();
    resultjC = "";
    resultjC_1 = "";
  }

  @override
  void verificarCampos() {
    visible = true;
    if ((c.text.isEmpty) || (i.text.isEmpty) || (t.text.isEmpty)) {
      resultjC =
          "Um ou mais campos estão vazios. Preencha todos os campos para efetuar o cálculo!";
      resultjC_1 = "";
    } else {
      resultjC = "";
      calcular();
    }
  }

  @override
  void calcular() {
    c1 = c.text;
    i1 = i.text;
    t1 = t.text;

    //M = C(1 + (i / 100))t
    capital = double.parse(c.text);
    meses = double.parse(t.text);
    taxa = double.parse(i.text);
    montante = capital * pow(1 + (taxa / 100), meses);
    juros = montante - capital;
    tax = taxa / 100;
    tax2 = tax + 1;
    tax3 = pow(tax2, meses);

    rjuros = dfJs3.format(juros);
    rcapital = dfJs3.format(capital);
    rmontante = dfJs3.format(montante);

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
    if (taxa == taxa.floor()) {
      ftaxa = dfJs1.format(taxa);
    } else {
      ftaxa = dfJs2.format(taxa);
    }
    if (tax == taxa.floor()) {
      ftaxa2 = dfJs1.format(tax);
    } else {
      ftaxa2 = dfJs2.format(tax);
    }
    if (tax2 == taxa.floor()) {
      ftaxa3 = dfJs1.format(tax2);
    } else {
      ftaxa3 = dfJs2.format(tax2);
    }
    if (tax3 == taxa.floor()) {
      ftaxa4 = dfJs1.format(tax3);
    } else {
      ftaxa4 = dfJs2.format(tax3);
    }

    resultjC =
        "Vamos utilizar a fórmula de Juros Compostos para encontrar o montante gerado e então através desse valor"
        " encontrar o valor de juros gerado. Temos o capital no valor de $rcapital, com a taxa mensal de"
        " $taxa%, no período de $fmes meses, aplicando a fórmula temos:"
        "\n"
        "\n"
        " M = C * (1 + (i / 100))^t"
        "\n"
        " M = $fcapital * (1 + ($ftaxa / 100))^t"
        "\n"
        " M = $fcapital * (1 + $ftaxa2)^$fmes"
        "\n"
        " M = $fcapital * ($ftaxa3)^$fmes"
        "\n"
        " M = $fcapital * ($ftaxa4)"
        "\n"
        " M = $rmontante"
        "\n"
        "\n"
        "J = M - C"
        "\n"
        "J = $fmontante - $fcapital"
        "\n"
        "J = $rjuros"
        "\n"
        "\n"
        "O valor de juros gerado é de:"
        "\n"
        "$rjuros.";
  }
  
  @override
  List<String> responseList() {
    return [resultjC, resultjC_1];
  }
  
  @override
  List<TextEditingController> controllerList() {
    return [c, i, t];
  }
  
  @override
  List<String> labelList() {
    return ["Capita:", "Taxa:", "Meses:"];
  }
}
