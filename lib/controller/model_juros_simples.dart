import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ModelJurosSimples {
  TextEditingController c = TextEditingController();
  TextEditingController i = TextEditingController();
  TextEditingController j = TextEditingController();
  TextEditingController t = TextEditingController();

  String resultjS = "Digite ao menos 3 valores!";
  String resultjS_1 = "";
  String resultjS_2 = "";

  bool visible = false;

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


  void resetCampos() {
    visible = false;
    c.clear();
    i.clear();
    t.clear();
    j.clear();
    resultjS = "";
    resultjS_1 = "";
    resultjS_2 = "";
  }

  void verificarCampos() {
    if ((c.text.isNotEmpty) &&
        (i.text.isNotEmpty) &&
        (t.text.isNotEmpty) &&
        (j.text.isNotEmpty)) {
      resultjS =
          "Somente é possível fazer o cálculo com 3 campos preenchidos. Tire um dos "
          "valores para calcular!";
      resultjS_1 = "";
      resultjS_2 = "";
    } else if ((c.text.isEmpty) &&
        (i.text.isEmpty) &&
        (t.text.isEmpty) &&
        (j.text.isEmpty)) {
      resultjS =
          "Preencha ao menos 3 dos 4 campos disponíveis para efetuar o cálculo.";
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
      resultjS = "";
      resultjS_1 = "";
      resultjS_2 = "";
      jurosSimples();
    }
  }

  void juros(){
    //JUROS
      double capital = double.parse(c.text);
      double meses = double.parse(t.text);
      double taxa = double.parse(i.text);
      double jur2 = (capital * taxa * meses);
      double jur = (capital * taxa * meses) / 100;
      double montante = capital + jur;

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
      "A fórmula para encontrar o valor em juros gerado pelo investimento é:""\n"
      "J = (C * i * t) / 100""\n";
      resultjS_1 = "J = (${c.text} * ${i.text} * ${t.text}) / 100";
      resultjS_2 = "J = " + "(" + "$fcapital " + "*" + " $ftaxa " + "*" + " $fmes" + ")" + " / 100" + "\n"
      "J = " + "$fjur2" + " / 100" + "\n" "J = " + "$jur" + "\n" "\n"
      "O valor de juros encontrado com a $ftaxa% ao mês, no período de $fmes meses, com a aplicação "
      "de $rcapital é de: " + "$rjur" + "\n" +
      "e o valor total encontrado através do montante que é a soma do Capital e do Juros é: " + "\n""\n"
      "M = C + J" + "\n"
      "M = " + "$fcapital" + " + " + "$fjur" + "\n"
      "M = " + "$fmontante" + "\n"
      "O montante total é de $rmontante.";
  }

  void capital(){
    //CAPITAL
      double juros = double.parse(j.text);
      double meses = double.parse(t.text);
      double taxa = double.parse(i.text);
      double cap = (juros * 100) / (taxa * meses);
      double montante = cap + juros;
      double juros2 = juros * 100;
      double taxmes = taxa * meses;

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
          "A fórmula para encontrar o valor em juros gerado pelo investimento é:""\n"
          "C = (J * 100) / (i * t)""\n";
      resultjS_1 = "C = (${j.text} * 100) / (${i.text} * ${t.text})";
      resultjS_2 = 
        "C = " + "(" + "$fjuros " + "* 100)" + " / " + "($ftaxa " + "*" + " $fmes)" + "\n"
        "C = " + "$fjuros2" + " / " + "$ftaxmes" + "\n" "C = " + "$fcapital" + "\n" "\n"
        "O valor do capital aplicado para que se tenha $rjuros de juros, com a taxa de $ftaxa% "
        "no período de $fmes meses, é de juros é de: " + "$rcapital" +
          "\n" "\n" +
        "E o valor total encontrado através do montante que é a soma do Capital e do Juros é: " + "\n""\n"
        "M = C + J" + "\n"
        "M = " + "$fcapital" + " + " + "$fjuros" + "\n"
        "M = " + "$fmontante" + "\n"
        "O montante total é de $rmontante.";
  }
  
  void taxa(){
    //TAXA
      double juros = double.parse(j.text);
      double meses = double.parse(t.text);
      double capital = double.parse(c.text);
      double tax = (juros * 100) / (capital * meses);
      double juros2 = juros * 100;
      double capmes = capital * meses;

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

      resultjS =
          "A fórmula para encontrar o valor em juros gerado pelo investimento é:""\n"
          "i = (J * 100) / (C * t)""\n";
      resultjS_1 = "i = (${j.text} * 100) / (${c.text} * ${t.text})";
      resultjS_2 =
      "i = " + "(" + "$fjuros " + "* 100)" + " / " + "($fcapital " + "*" + " $fmes)" + "\n"
      "i = " + "$fjuros2" + " / " "$fcapmes" + "\n" "i = " + "$ftax" + "\n""\n"
      "A taxa mensal encontrado para o valor aplicado de $rcapital, com rendimento de $rjuros em juros, no período "
      "de $fmes meses, é de: $ftax%.";
  }

  void tempo(){
    //TEMPO
      double capital = double.parse(c.text);
      double taxa = double.parse(i.text);
      double juros = double.parse(j.text);
      double mes = (juros * 100) / (capital * taxa);
      double dias = mes * 30;
      double juros2 = juros * 100;
      double captax = capital * taxa;

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
          "A fórmula para encontrar o tempo necessário para o investimento é:""\n"
          "t = (J * 100) / (C * i)""\n";
      resultjS_1 = "t = (${j.text} * 100) / (${c.text} * ${i.text})";
      resultjS_2 =
      "t = " + "(" + "$fjuros * 100)" + " / " + "($fcapital * $ftaxa)" + "\n"
      "t = " + "$fjuros2" + " / " + "$fcaptax" + "\n" "t = " + "$fmes" + "\n\n"
      "O número de meses necessário para gerar o juros de $rjuros, com a aplicação de capital no valor de $rcapital, sob "
      "a taxa mensal de $ftaxa% é: $fmes meses ou o equivalente a $fdias dias.";
  }

  void jurosSimples() {
    visible = true;

    if ((c.text.isNotEmpty) && (i.text.isNotEmpty) && (t.text.isNotEmpty)) {
      juros();
    } else if ((j.text.isNotEmpty) && (i.text.isNotEmpty) && (t.text.isNotEmpty)) {
      capital();
    } else if ((j.text.isNotEmpty) && (c.text.isNotEmpty) && (t.text.isNotEmpty)) {
      taxa();
    } else if ((j.text.isNotEmpty) && (c.text.isNotEmpty) && (i.text.isNotEmpty)) {
      tempo();
    }
  }
}
