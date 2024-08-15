import 'package:exemplifica/utils/constants/core_colors.dart';
import 'package:exemplifica/person_icons.dart';
import 'package:exemplifica/screens/calculadoras/calc_porcentagem.dart';
import 'package:exemplifica/utils/constants/strings/strings_porcentagem.dart';
import 'package:flutter/material.dart';

class Porcentagem extends StatefulWidget {
  @override
  _PorcentagemState createState() => _PorcentagemState();
}

class _PorcentagemState extends State<Porcentagem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CoreColors.colorBackground,
      appBar: AppBar(
        backgroundColor: CoreColors.appBarColor,
        title: Text(
          CoreStringsPorcentagem.titlePorcentagem,
          style: TextStyle(color: CoreColors.textPrimary),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(
            Icons.reply,
            color: CoreColors.textPrimary,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Person.calc,
              color: CoreColors.textPrimary,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CalcPorcentagem()));
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  CoreStringsPorcentagem.text1_porcentagem,
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  CoreStringsPorcentagem.text2_porcentagem,
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: MediaQuery.of(context).size.width * .6,
                child: Image.asset(
                    "images/operacoes/porcentagem/porcentagem_2.png"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  CoreStringsPorcentagem.text3_porcentagem,
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: MediaQuery.of(context).size.width * .8,
                child: Image.asset(
                    "images/operacoes/porcentagem/porcentagem_3.png"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  CoreStringsPorcentagem.text4_porcentagem,
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: MediaQuery.of(context).size.width * .55,
                child: Image.asset(
                    "images/operacoes/porcentagem/porcentagem_4.png"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  CoreStringsPorcentagem.text5_porcentagem,
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: MediaQuery.of(context).size.width * .40,
                child: Image.asset(
                    "images/operacoes/porcentagem/porcentagem_5.png"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  CoreStringsPorcentagem.text6_porcentagem,
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  CoreStringsPorcentagem.text7_porcentagem,
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  CoreStringsPorcentagem.text8_porcentagem,
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: MediaQuery.of(context).size.width * .75,
                child: Image.asset(
                    "images/operacoes/porcentagem/porcentagem_6.png"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  CoreStringsPorcentagem.text9_porcentagem,
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: MediaQuery.of(context).size.width * .60,
                child: Image.asset(
                    "images/operacoes/porcentagem/porcentagem_7.png"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  CoreStringsPorcentagem.text10_porcentagem,
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: MediaQuery.of(context).size.width * .80,
                child: Image.asset(
                    "images/operacoes/porcentagem/porcentagem_9.png"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  CoreStringsPorcentagem.text11_porcentagem,
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: MediaQuery.of(context).size.width * .70,
                child: Image.asset(
                    "images/operacoes/porcentagem/porcentagem_8.png"),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 25),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  CoreStringsPorcentagem.text12_porcentagem,
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
