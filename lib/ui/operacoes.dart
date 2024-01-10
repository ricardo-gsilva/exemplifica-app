import 'package:exemplifica_git/ad_mob/ad_mob.dart';
import 'package:exemplifica_git/components/drawer_comp/drawer_page.dart';
import 'package:exemplifica_git/operacoes/equacao_1.dart';
import 'package:exemplifica_git/operacoes/equacao_2.dart';
import 'package:exemplifica_git/operacoes/fatorial.dart';
import 'package:exemplifica_git/operacoes/funcoes.dart';
import 'package:exemplifica_git/operacoes/juros_compostos.dart';
import 'package:exemplifica_git/operacoes/juros_simples.dart';
import 'package:exemplifica_git/operacoes/mdc.dart';
import 'package:exemplifica_git/operacoes/mmc.dart';
import 'package:exemplifica_git/operacoes/porcentagem.dart';
import 'package:exemplifica_git/operacoes/regra_de_3.dart';
import 'package:exemplifica_git/operacoes/tabuada.dart';
import 'package:exemplifica_git/ui/components/button_base.dart';
import 'package:flutter/material.dart';

class Operacoes extends StatefulWidget {
  @override
  _OperacoesState createState() => _OperacoesState();
}

class _OperacoesState extends State<Operacoes> {
  // final AdMob adMob = AdMob();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/backapp.png"), fit: BoxFit.cover)),
        child: Scaffold(
          appBar: AppBar(actions: <Widget>[
            IconButton(
              icon: Icon(Icons.reply),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ]),
          drawer: DrawerPage(),
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                    left: 0.0, top: 5.0, right: 0.0, bottom: 5.0),
                child: Image.asset("images/op_matematicas.png"),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Nos botões abaixo, você poderá encontrar explicações detalhadas para cada assunto"
                  " abordado. O EXEMPLIFICA buscou desenvolver explicações que tivessem a maior clareza para você"
                  " e caso precise, poderá utilizar a calculadora que se encontra no canto direito superior, cada"
                  " área contém sua própria calculadora. Não perca a chance de conferir. Bons estudos!!",
                  style: TextStyle(fontSize: 20.0),
                ),
              ),

              //-------------- BOTÕES ------------//
              
              // ButtonBase(
              //   title: "Equação 1º",
              //   page: Equacao_1(),
              //   primaryColor: Colors.blue.shade700,
              // ),
              // ButtonBase(
              //   title: "Equação 2º",
              //   page: Equacao_2(),
              //   primaryColor: Colors.blue.shade600,
              // ),
              // ButtonBase(
              //   title: "Fatorial",
              //   page: Fatorial(),
              //   primaryColor: Colors.blue.shade500,
              // ),
              // ButtonBase(
              //   title: "Funções",
              //   page: Funcoes(),
              //   primaryColor: Colors.blue.shade400,
              // ),
              // ButtonBase(
              //   title: "Juros Compostos",
              //   page: JurosCompostos(),
              //   primaryColor: Colors.blue.shade300,
              // ),
              // ButtonBase(
              //   title: "Juros Simples",
              //   page: JurosSimples(),
              //   primaryColor: Colors.blue.shade200,
              // ),
              // ButtonBase(
              //   title: "MDC",
              //   page: Mdc(),
              //   primaryColor: Colors.blue.shade300,
              // ),
              // ButtonBase(
              //   title: "MMC",
              //   page: Mmc(),
              //   primaryColor: Colors.blue.shade400,
              // ),
              // ButtonBase(
              //   title: "Porcentagem",
              //   page: Porcentagem(),
              //   primaryColor: Colors.blue.shade500,
              // ),
              // ButtonBase(
              //   title: "Regra de 3",
              //   page: RegraDe3(),
              //   primaryColor: Colors.blue.shade600,
              // ),
              // ButtonBase(
              //   title: "Tabuada",
              //   page: Tabuada(),
              //   primaryColor: Colors.blue.shade700,
              // ),
              Divider(height: 15,)
            ]),
          ),
        ),
      ),
    );
  }
}
