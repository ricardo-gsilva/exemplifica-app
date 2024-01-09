import 'package:exemplifica_git/calculadoras/calc_mdc.dart';
import 'package:exemplifica_git/constants/core_strings.dart';
import 'package:exemplifica_git/person_icons.dart';
import 'package:flutter/material.dart';

class Mdc extends StatefulWidget {
  @override
  _MdcState createState() => _MdcState();
}

class _MdcState extends State<Mdc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlue.shade50,
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: Text(
            CoreStrings.titleMdc,
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
              icon: Icon(
                Person.calc,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CalcMdc()));
              },
            )
          ],
        ),
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              CoreStrings.text1_mdc,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              CoreStrings.text2_mdc,
              style: TextStyle(fontSize: 16.0, color: Colors.red),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              CoreStrings.text3_mdc,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: MediaQuery.of(context).size.width * .7,
                child: Image.asset("images/operacoes/mdc/mdc_2.png"),
              )),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              CoreStrings.text4_mdc,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: MediaQuery.of(context).size.width * .85,
                child: Image.asset("images/operacoes/mdc/mdc_3.png"),
              )),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 25),
            child: Text(
              CoreStrings.text5_mdc,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
        ])
      ),
      bottomNavigationBar: SizedBox(height: MediaQuery.of(context).size.height * 0.1),
    );
  }
}
