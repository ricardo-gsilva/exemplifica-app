import 'package:exemplifica_git/calculadoras/calc_tabuada.dart';
import 'package:exemplifica_git/constants/core_strings.dart';
import 'package:exemplifica_git/person_icons.dart';
import 'package:flutter/material.dart';

class Tabuada extends StatefulWidget {
  @override
  _TabuadaState createState() => _TabuadaState();
}

class _TabuadaState extends State<Tabuada> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade50,
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text(
          CoreStrings.titleTabuada,
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
                  MaterialPageRoute(builder: (context) => CalcTabuada()));
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                CoreStrings.text1_tabuada,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                CoreStrings.text2_tabuada,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * .2,
                  child: Image.asset("images/operacoes/tabuada/tabuada_2.png"),
                )),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                CoreStrings.text3_tabuada,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                CoreStrings.text4_tabuada,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * .35,
                  child: Image.asset("images/operacoes/tabuada/tabuada_3.png"),
                )),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                CoreStrings.text5_tabuada,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * .9,
                  child: Image.asset("images/operacoes/tabuada/tabuada_4.png"),
                )),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 25),
              child: Text(
                CoreStrings.text6_tabuada,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(height: MediaQuery.of(context).size.height * 0.1),
    );
  }
}
