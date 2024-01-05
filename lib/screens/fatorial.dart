import 'package:exemplifica_git/calculadoras/calc_fatorial.dart';
import 'package:exemplifica_git/constants/core_strings.dart';
import 'package:exemplifica_git/person_icons.dart';
import 'package:flutter/material.dart';

class Fatorial extends StatefulWidget {
  @override
  _FatorialState createState() => _FatorialState();
}

class _FatorialState extends State<Fatorial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade50,
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text(
          CoreStrings.titleFatorial,
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.reply),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Person.calc, color: Colors.black),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CalcFatorial()));
            },
          )
        ],
      ),
      body: SingleChildScrollView(
          child: Column(children: [
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            CoreStrings.text1_Fatorial,
            style: TextStyle(fontSize: 16.0),
          ),
        ),
        Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              width: MediaQuery.of(context).size.width * 1.0,
              child: Image.asset("images/operacoes/fatorial/fatorial_2.png"),
            )),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            CoreStrings.text2_Fatorial,
            style: TextStyle(fontSize: 16.0),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            CoreStrings.text3_Fatorial,
            style: TextStyle(fontSize: 20.0, color: Colors.red),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            CoreStrings.text4_Fatorial,
            style: TextStyle(fontSize: 16.0),
          ),
        ),
        Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              width: MediaQuery.of(context).size.width * .40,
              child: Image.asset("images/operacoes/fatorial/fatorial_4.png"),
            )),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            CoreStrings.text5_Fatorial,
            style: TextStyle(fontSize: 16.0),
          ),
        ),
        Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              width: MediaQuery.of(context).size.width * .50,
              child: Image.asset("images/operacoes/fatorial/fatorial_5.png"),
            )),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            CoreStrings.text6_Fatorial,
            style: TextStyle(fontSize: 16.0),
          ),
        ),
        Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              width: MediaQuery.of(context).size.width * .40,
              child: Image.asset("images/operacoes/fatorial/fatorial_6.png"),
            )),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            CoreStrings.text7_Fatorial,
            style: TextStyle(fontSize: 16.0),
          ),
        ),
        Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              width: MediaQuery.of(context).size.width * .40,
              child: Image.asset("images/operacoes/fatorial/fatorial_7.png"),
            )),
        Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Text(
                CoreStrings.text8_Fatorial,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            )),
        Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              width: MediaQuery.of(context).size.width * .40,
              child: Image.asset("images/operacoes/fatorial/fatorial_9.png"),
            )),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            CoreStrings.text9_Fatorial,
            style: TextStyle(fontSize: 16.0),
          ),
        ),
        Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              width: MediaQuery.of(context).size.width * .8,
              child: Image.asset("images/operacoes/fatorial/fatorial_10.png"),
            )),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            CoreStrings.text10_Fatorial,
            style: TextStyle(fontSize: 16.0),
          ),
        ),
        Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Text(
                CoreStrings.text11_Fatorial,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            )),
        Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Image.asset("images/operacoes/fatorial/fatorial_12.png"),
            )),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            CoreStrings.text12_Fatorial,
            style: TextStyle(fontSize: 16.0),
          ),
        ),
        Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              width: MediaQuery.of(context).size.width * .5,
              child: Image.asset("images/operacoes/fatorial/fatorial_13.png"),
            )),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            CoreStrings.text13_Fatorial,
            style: TextStyle(fontSize: 16.0),
          ),
        ),
        Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              width: MediaQuery.of(context).size.width * .55,
              child: Image.asset("images/operacoes/fatorial/fatorial_14.png"),
            )),
        Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Text(
                CoreStrings.text14_Fatorial,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            )),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            CoreStrings.text15_Fatorial,
            style: TextStyle(fontSize: 16.0),
          ),
        ),
        Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              width: MediaQuery.of(context).size.width * .15,
              child: Image.asset("images/operacoes/fatorial/fatorial_16.png"),
            )),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            CoreStrings.text16_Fatorial,
            style: TextStyle(fontSize: 16.0),
          ),
        ),
        Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              width: MediaQuery.of(context).size.width * .5,
              child: Image.asset("images/operacoes/fatorial/fatorial_17.png"),
            )),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            CoreStrings.text17_Fatorial,
            style: TextStyle(fontSize: 16.0),
          ),
        ),
        Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Text(
                CoreStrings.text18_Fatorial,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            )),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            CoreStrings.text19_Fatorial,
            style: TextStyle(fontSize: 16.0),
          ),
        ),
        Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              width: MediaQuery.of(context).size.width * .8,
              child: Image.asset("images/operacoes/fatorial/fatorial_19.png"),
            )),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            CoreStrings.text20_Fatorial,            
            style: TextStyle(fontSize: 16.0),
          ),
        ),
        Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              width: MediaQuery.of(context).size.width * .55,
              child: Image.asset("images/operacoes/fatorial/fatorial_20.png"),
            )),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            CoreStrings.text21_Fatorial,            
            style: TextStyle(fontSize: 16.0),
          ),
        ),
        Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 25),
            child: Container(
              width: MediaQuery.of(context).size.width * .5,
              child: Image.asset("images/operacoes/fatorial/fatorial_21.png"),
            )),
      ])),
      //ADMob Banner
      bottomNavigationBar: SizedBox(
        height: MediaQuery.of(context).size.height * 0.1,
      ),
    );
  }
}
