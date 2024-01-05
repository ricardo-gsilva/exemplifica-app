import 'package:exemplifica_git/calculadoras/calc_equacao_1.dart';
import 'package:exemplifica_git/constants/core_strings.dart';
import 'package:exemplifica_git/person_icons.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Equacao_1 extends StatefulWidget {
  @override
  _Equacao_1State createState() => _Equacao_1State();
}

// ignore: camel_case_types
class _Equacao_1State extends State<Equacao_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade50,
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text(CoreStrings.titleEquacao1, style: TextStyle(color: Colors.black),),
        automaticallyImplyLeading: false,
        centerTitle: true,
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
              color: Colors.black
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CalcEquacao1()));
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(CoreStrings.text1_Equacao1,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child:
                      Image.asset("images/operacoes/equacao_1/equacao1_2.png"),
                )),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(CoreStrings.text2_Equacao1,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * .5,
                  child:
                      Image.asset("images/operacoes/equacao_1/equacao1_3.png"),
                )),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(CoreStrings.text3_Equacao1,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * .5,
                  child:
                      Image.asset("images/operacoes/equacao_1/equacao1_4.png"),
                )),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(CoreStrings.text4_Equacao1,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * .4,
                  child:
                      Image.asset("images/operacoes/equacao_1/equacao1_5.png"),
                )),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(CoreStrings.text5_Equacao1,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * .4,
                  child:
                      Image.asset("images/operacoes/equacao_1/equacao1_6.png"),
                )),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(CoreStrings.text6_Equacao1,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * .6,
                  child:
                      Image.asset("images/operacoes/equacao_1/equacao1_7.png"),
                )),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 25),
              child: Text(CoreStrings.text7_Equacao1,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ],
        ),
      ),
      //ADMob Banner
      bottomNavigationBar: SizedBox(height: MediaQuery.of(context).size.height * 0.1,),
    );
  }
}
