import 'package:exemplifica_git/calculadoras/calc_juros_simples.dart';
import 'package:exemplifica_git/constants/core_strings.dart';
import 'package:exemplifica_git/person_icons.dart';
import 'package:flutter/material.dart';

class JurosSimples extends StatefulWidget {
  @override
  _JurosSimplesState createState() => _JurosSimplesState();
}

class _JurosSimplesState extends State<JurosSimples> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlue.shade50,
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          automaticallyImplyLeading: false,
          title: Text(CoreStrings.titleJurosSimples),
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
                    MaterialPageRoute(builder: (context) => CalcJurosS()));
              },
            )
          ],
        ),
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              CoreStrings.text1_JurosSimples,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              CoreStrings.text2_JurosSimples,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  CoreStrings.text3_JurosSimples,
                  style: TextStyle(fontSize: 16.0),
                ),
              )),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              CoreStrings.text4_JurosSimples,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
            child: Container(
              width: MediaQuery.of(context).size.width * .5,
              child: Image.asset(
                  "images/operacoes/juros_simples/jurosSimples_2.png"),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              CoreStrings.text5_JurosSimples,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              CoreStrings.text6_JurosSimples,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
            child: Container(
              width: MediaQuery.of(context).size.width * .5,
              child: Image.asset(
                  "images/operacoes/juros_simples/jurosSimples_3.png"),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              CoreStrings.text7_JurosSimples,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              CoreStrings.text8_JurosSimples,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
            child: Container(
              width: MediaQuery.of(context).size.width * .9,
              child: Image.asset(
                  "images/operacoes/juros_simples/jurosSimples_4.png"),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15.0, bottom: 5.0),
            child: Container(
              width: MediaQuery.of(context).size.width * .8,
              child: Image.asset(
                  "images/operacoes/juros_simples/jurosSimples_5.png"),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15.0, bottom: 5.0),
            child: Container(
              width: MediaQuery.of(context).size.width * .65,
              child: Image.asset(
                  "images/operacoes/juros_simples/jurosSimples_6.png"),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 25),
            child: Text(
              CoreStrings.text9_JurosSimples,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
        ])
      ),
      //AdMob
      bottomNavigationBar: SizedBox(height: MediaQuery.of(context).size.height * 0.1),
    );
  }
}
