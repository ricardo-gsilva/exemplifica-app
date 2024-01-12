import 'package:exemplifica_git/constants/core_strings.dart';
import 'package:exemplifica_git/person_icons.dart';
import 'package:exemplifica_git/screens/calculadoras/calc_mmc.dart';
import 'package:flutter/material.dart';

class Mmc extends StatefulWidget {
  @override
  _MmcState createState() => _MmcState();
}

class _MmcState extends State<Mmc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlue.shade50,
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: Text(
            CoreStrings.titleMmc,
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
                    MaterialPageRoute(builder: (context) => CalcMmc()));
              },
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                CoreStrings.text1_mmc,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                CoreStrings.text2_mmc,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * .9,
                  child: Image.asset("images/operacoes/mmc/mmc_2.png"),
                )),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                CoreStrings.text3_mmc,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                CoreStrings.text4_mmc,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * .45,
                  child: Image.asset("images/operacoes/mmc/mmc_3.png"),
                )),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                CoreStrings.text5_mmc,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * .9,
                  child: Image.asset("images/operacoes/mmc/mmc_4.png"),
                )),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                CoreStrings.text6_mmc,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * .45,
                  child: Image.asset("images/operacoes/mmc/mmc_5.png"),
                )),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 25),
              child: Text(
                CoreStrings.text7_mmc,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ]),
        ),
        bottomNavigationBar: Container(color: Colors.black, height: MediaQuery.of(context).size.height * 0.1),
      );
  }
}
