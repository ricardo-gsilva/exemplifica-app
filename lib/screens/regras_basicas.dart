import 'package:exemplifica_git/constants/core_strings.dart';
import 'package:exemplifica_git/regras/expoentes.dart';
import 'package:exemplifica_git/regras/mult_div.dart';
import 'package:exemplifica_git/regras/parentesis.dart';
import 'package:exemplifica_git/regras/regras_sinal.dart';
import 'package:exemplifica_git/regras/soma_sub.dart';
import 'package:exemplifica_git/ui/components/button_base.dart';
import 'package:flutter/material.dart';

class RegrasBasicas extends StatefulWidget {
  @override
  _RegrasBasicasState createState() => _RegrasBasicasState();
}

class _RegrasBasicasState extends State<RegrasBasicas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade50,
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text(
          CoreStrings.titleRegrasBasicas,
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(
            Icons.reply,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: <Widget>[
        
      ]),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Para ter bons resultados em matemática, é necessário compreender as regras"
                " básicas para a resolução dos problemas. Abaixo estão listadas algumas dessas regras,"
                " clique em uma delas para conhecer.",
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            ButtonBase(
              title: "1º Parêntesis",
              page: Parentesis(),
              primaryColor: Colors.blue.shade600,
            ),
            ButtonBase(
              title: "2º Expoentes",
              page: Expoentes(),
              primaryColor: Colors.blue.shade400,
            ),
            ButtonBase(
              title: "3º Multiplicações e Divisões",
              page: MultiplicaDiv(),
              primaryColor: Colors.blue.shade200,
            ),
            ButtonBase(
              title: "4º Somas e Subtrações",
              page: SomaSubtracao(),
              primaryColor: Colors.blue.shade400,
            ),
            ButtonBase(
              title: "Regras de Sinais",
              page: RegrasSinais(),
              primaryColor: Colors.blue.shade600,
            )
          ],
        ),
      ),
    );
  }
}
