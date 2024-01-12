import 'package:exemplifica_git/constants/core_strings.dart';
import 'package:exemplifica_git/person_icons.dart';
import 'package:exemplifica_git/screens/calculadoras/calc_equacao_2.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Equacao_2 extends StatefulWidget {
  @override
  _Equacao_2State createState() => _Equacao_2State();
}

// ignore: camel_case_types
class _Equacao_2State extends State<Equacao_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade50,
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text(
          CoreStrings.titleEquacao2,
          style: TextStyle(color: Colors.black),
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
              color: Colors.black,
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
              child: Text(CoreStrings.text1_Equacao2,
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
              child: Text(CoreStrings.text2_Equacao2,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(CoreStrings.text3_Equacao2,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(CoreStrings.text4_Equacao2,
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
              child: Text(CoreStrings.text5_Equacao2,
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
              child: Text(CoreStrings.text6_Equacao2,
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
              child: Text(CoreStrings.text7_Equacao2,
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
              child: Text(CoreStrings.text8_Equacao2,                
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
              child: Text(CoreStrings.text9_Equacao2,
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
              child: Text(CoreStrings.text10_Equacao2,
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
              child: Text(CoreStrings.text11_Equacao2,
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
              child: Text(CoreStrings.text12_Equacao2,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(CoreStrings.text13_Equacao2,
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
              child: Text(CoreStrings.text14_Equacao2,
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
              child: Text(CoreStrings.text15_Equacao2,
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
              child: Text(CoreStrings.text16_Equacao2,
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
              child: Text(CoreStrings.text17_Equacao2,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ],
        ),        
      ),
      bottomNavigationBar: Container(color: Colors.black, height: MediaQuery.of(context).size.height * 0.1),
    );
  }
}
