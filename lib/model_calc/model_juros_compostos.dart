import 'dart:math';

import 'package:exemplifica_git/ad_mob/ad_mob.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ModelJurosCompostos {

  final AdMob adMob = AdMob();

  TextEditingController c = TextEditingController();
  TextEditingController i = TextEditingController();
  TextEditingController j = TextEditingController();
  TextEditingController t = TextEditingController();
  TextEditingController m = TextEditingController();

  String resultjC = "";
  String resultjC_1 = "";
  String resultjC_2 = "";
  String c1 = "";
  String i1 = "";
  String t1 = "";

  void resetCampos() {    
      c.text = "";
      i.text = "";
      t.text = "";
      j.text = "";
      resultjC = "";
      resultjC_1 = "";
      resultjC_2 = "";    
  }

  void verificarCampos(){
    if ((c.text.isEmpty) && (i.text.isEmpty) && (t.text.isEmpty)) {
        resultjC = "Preencha os campos disponíveis para efetuar o cálculo!";
        resultjC_1 = "";
        resultjC_2 = "";
    } else if ((c.text.isEmpty) || (i.text.isEmpty) || (t.text.isEmpty)) {
        resultjC = "Um ou mais campos estão vazios. Preencha os campos para efetuar o cálculo!";
        resultjC_1 = "";
        resultjC_2 = "";
    } else {
      resultjC = "";
      jurosCompostos();
      adMob.showInstersticial();
    }    
  }

  void jurosCompostos (){
    
      c1 = c.text;
      i1 = i.text;
      t1 = t.text;

      
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

        //Formtação
        NumberFormat dfJs1 = new NumberFormat ("0");
        NumberFormat dfJs2 = new NumberFormat ("0.00");
        NumberFormat dfJs3 = new NumberFormat ("R\$0.00");

        if ((c.text.isNotEmpty) && (i.text.isNotEmpty) && (t.text.isNotEmpty)) {
          //JUROS COMPOSTOS
          //M = C(1 + (i / 100))t
          double capital = double.parse(c.text);
          double meses = double.parse(t.text);
          double taxa = double.parse(i.text);
          double montante = capital * pow(1 + (taxa/100), meses) ;
          double juros = montante - capital;
          double tax = taxa / 100;
          double tax2 = tax + 1;
          num tax3 = pow(tax2, meses);

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
              " encontrar o valor de juros gerado. Temos o capital no valor de ${rcapital}, com a taxa mensal de"
              " ${taxa}%, no período de ${fmes} meses, aplicando a fórmula temos:" "\n""\n"
              " M = C * (1 + (i / 100))^t" "\n"
              " M = ${fcapital} * (1 + (${ftaxa} / 100))^t" "\n"
              " M = ${fcapital} * (1 + ${ftaxa2})^${fmes}" "\n"
              " M = ${fcapital} * (${ftaxa3})^${fmes}" "\n"
              " M = ${fcapital} * (${ftaxa4})" "\n"
              " M = ${rmontante}" "\n""\n"

              "J = M - C""\n"
              "J = ${fmontante} - ${fcapital}""\n"
              "J = ${rjuros}""\n""\n"

              "O valor de juros gerado é de:""\n"
              "${rjuros}.";
        }
      
    
  }
}