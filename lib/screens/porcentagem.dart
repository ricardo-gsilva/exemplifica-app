import 'package:exemplifica_git/constants/core_strings.dart';
import 'package:exemplifica_git/person_icons.dart';
import 'package:exemplifica_git/screens/calculadoras/calc_porcentagem.dart';
import 'package:flutter/material.dart';

class Porcentagem extends StatefulWidget {
  @override
  _PorcentagemState createState() => _PorcentagemState();
}

class _PorcentagemState extends State<Porcentagem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade50,
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text(
          CoreStrings.titlePorcentagem,
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
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Person.calc,
              color: Colors.black,
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
                  CoreStrings.text1_porcentagem,
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  CoreStrings.text2_porcentagem,
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
                  CoreStrings.text3_porcentagem,
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
                  CoreStrings.text4_porcentagem,
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
                  CoreStrings.text5_porcentagem,
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
                  CoreStrings.text6_porcentagem,
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  CoreStrings.text7_porcentagem,
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  CoreStrings.text8_porcentagem,
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
                  CoreStrings.text9_porcentagem,
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
                  CoreStrings.text10_porcentagem,
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
                  CoreStrings.text11_porcentagem,
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
                  CoreStrings.text12_porcentagem,
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
