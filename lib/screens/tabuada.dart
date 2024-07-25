import 'package:exemplifica/utils/constants/core_colors.dart';
import 'package:exemplifica/person_icons.dart';
import 'package:exemplifica/screens/calculadoras/cald_tabuada.dart';
import 'package:exemplifica/utils/constants/strings/strings_tabuada.dart';
import 'package:flutter/material.dart';

class Tabuada extends StatefulWidget {
  @override
  _TabuadaState createState() => _TabuadaState();
}

class _TabuadaState extends State<Tabuada> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CoreColors.colorBackground,
      appBar: AppBar(
        backgroundColor: CoreColors.appBarColor,
        title: Text(
          CoreStringsTabuada.titleTabuada,
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
                CoreStringsTabuada.text1_tabuada,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                CoreStringsTabuada.text2_tabuada,
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
                CoreStringsTabuada.text3_tabuada,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                CoreStringsTabuada.text4_tabuada,
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
                CoreStringsTabuada.text5_tabuada,
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
                CoreStringsTabuada.text6_tabuada,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ],
        ),
      ),
      );
  }
}
