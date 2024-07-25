// ignore_for_file: camel_case_types

import 'package:exemplifica/utils/constants/core_colors.dart';
import 'package:exemplifica/person_icons.dart';
import 'package:exemplifica/screens/calculadoras/calc_equacao_2.dart';
import 'package:exemplifica/utils/constants/strings/strings_equacao_2.dart';
import 'package:flutter/material.dart';

class Equacao_2 extends StatefulWidget {
  @override
  _Equacao_2State createState() => _Equacao_2State();
}

class _Equacao_2State extends State<Equacao_2> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CoreColors.colorBackground,
      appBar: AppBar(
        backgroundColor: CoreColors.appBarColor,
        title: Text(
          CoreStringsEquacao2.titleEquacao2,
          style: TextStyle(color: CoreColors.textPrimary),
        ),
        leading: IconButton(
          icon: Icon(Icons.reply),
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
                  MaterialPageRoute(builder: (context) => CalcEquacao2()));
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(CoreStringsEquacao2.text1_Equacao2,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * .7,
                  child:
                      Image.asset("images/operacoes/equacao_2/equacao2_2.png"),
                )),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(CoreStringsEquacao2.text2_Equacao2,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(CoreStringsEquacao2.text3_Equacao2,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(CoreStringsEquacao2.text4_Equacao2,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * .5,
                  child:
                      Image.asset("images/operacoes/equacao_2/equacao2_3.png"),
                )),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(CoreStringsEquacao2.text5_Equacao2,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * .35,
                  child:
                      Image.asset("images/operacoes/equacao_2/equacao2_4.png"),
                )),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(CoreStringsEquacao2.text6_Equacao2,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * .35,
                  child:
                      Image.asset("images/operacoes/equacao_2/equacao2_5.png"),
                )),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(CoreStringsEquacao2.text7_Equacao2,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * .35,
                  child:
                      Image.asset("images/operacoes/equacao_2/equacao2_6.png"),
                )),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(CoreStringsEquacao2.text8_Equacao2,                
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * .35,
                  child:
                      Image.asset("images/operacoes/equacao_2/equacao2_7.png"),
                )),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(CoreStringsEquacao2.text9_Equacao2,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * .7,
                  child:
                      Image.asset("images/operacoes/equacao_2/equacao2_8.png"),
                )),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(CoreStringsEquacao2.text10_Equacao2,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * .7,
                  child:
                      Image.asset("images/operacoes/equacao_2/equacao2_17.png"),
                )),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(CoreStringsEquacao2.text11_Equacao2,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * .5,
                  child:
                      Image.asset("images/operacoes/equacao_2/equacao2_12.png"),
                )),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(CoreStringsEquacao2.text12_Equacao2,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(CoreStringsEquacao2.text13_Equacao2,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * .7,
                  child:
                      Image.asset("images/operacoes/equacao_2/equacao2_13.png"),
                )),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(CoreStringsEquacao2.text14_Equacao2,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * .7,
                  child:
                      Image.asset("images/operacoes/equacao_2/equacao2_14.png"),
                )),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(CoreStringsEquacao2.text15_Equacao2,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * .7,
                  child:
                      Image.asset("images/operacoes/equacao_2/equacao2_15.png"),
                )),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(CoreStringsEquacao2.text16_Equacao2,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * .75,
                  child:
                      Image.asset("images/operacoes/equacao_2/equacao2_16.png"),
                )),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 25),
              child: Text(CoreStringsEquacao2.text17_Equacao2,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ],
        ),        
      ),      
    );
  }
}
