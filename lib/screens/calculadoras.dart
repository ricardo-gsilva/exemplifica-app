// import 'package:exemplifica_git/calculadoras/calc_funcoes.dart';
import 'package:exemplifica_git/constants/core_strings.dart';
import 'package:exemplifica_git/screens/calculadoras/calc_equacao_1.dart';
import 'package:exemplifica_git/screens/calculadoras/calc_equacao_2.dart';
import 'package:exemplifica_git/screens/calculadoras/calc_funcoes.dart';
import 'package:exemplifica_git/screens/calculadoras/calc_juros_compostos.dart';
import 'package:exemplifica_git/screens/calculadoras/calc_juros_simples.dart';
import 'package:exemplifica_git/screens/calculadoras/calc_mmc.dart';
import 'package:exemplifica_git/screens/calculadoras/calc_porcentagem.dart';
import 'package:exemplifica_git/screens/calculadoras/calc_regra_de_3.dart';
import 'package:exemplifica_git/screens/calculadoras/cald_fatorial.dart';
import 'package:exemplifica_git/screens/calculadoras/cald_mdc.dart';
import 'package:exemplifica_git/screens/calculadoras/cald_tabuada.dart';
import 'package:exemplifica_git/screens/widgets/button_custom.dart';
import 'package:exemplifica_git/screens/components/row_cards.dart';
import 'package:flutter/material.dart';

class Calculadoras extends StatefulWidget {
  @override
  _CalculadorasState createState() => _CalculadorasState();
}

class _CalculadorasState extends State<Calculadoras> {
  double height = 0;
  double width = 0;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width * 0.4;
    height = MediaQuery.of(context).size.height * 0.1;
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade50,
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(
            Icons.reply,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          CoreStrings.titleCalculadoras,
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: RowCards(
              titleFirst: "Equação de 1º Grau",
              titleSecond: "Equação de 2º Grau",
              onTapFirst: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => CalcEquacao1()));
              },
              onTapSecond: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => CalcEquacao2()));
              },
              height: height
            ),
          ),
          ButtonBase(
            height: height,
            title: "Fatorial",
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => CalcFatorial()));
            },
          ),
          RowCards(
            titleFirst: "Funções",
            titleSecond: "Juros Compostos",
            onTapFirst: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => CalcFuncoes()));
            },
            onTapSecond: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => CalcJurosC()));
            },
            height: height
          ),          
          ButtonBase(
            height: height,
            title: "Juros Simples",
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => CalcJurosS()));
            },
          ),
          RowCards(
            titleFirst: "M.D.C",
            titleSecond: "M.M.C",
            onTapFirst: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => CalcMdc()));
            },
            onTapSecond: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => CalcMmc()));
            },
            height: height
          ),   
          ButtonBase(
            height: height,
            title: "Porcentagem",
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => CalcPorcentagem()));
            },
          ),
          RowCards(
            titleFirst: "Regra de 3",
            titleSecond: "Tabuada",
            onTapFirst: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => CalcRegraDe3()));
            },
            onTapSecond: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => CalcTabuada()));
            },
            height: height
          ),
        ]),
      ),
      bottomNavigationBar: Container(height: MediaQuery.of(context).size.height * 0.1, color: Colors.black,),
    );
  }
}