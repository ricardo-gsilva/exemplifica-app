import 'package:exemplifica/utils/constants/core_colors.dart';
import 'package:exemplifica/person_icons.dart';
import 'package:exemplifica/screens/calculadoras/cald_mdc.dart';
import 'package:exemplifica/utils/constants/strings/strings_mdc.dart';
import 'package:flutter/material.dart';

class Mdc extends StatefulWidget {
  @override
  _MdcState createState() => _MdcState();
}

class _MdcState extends State<Mdc> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CoreColors.colorBackground,
        appBar: AppBar(
          backgroundColor: CoreColors.appBarColor,
          title: Text(
            CoreStringsMdc.titleMdc,
            style: TextStyle(color: CoreColors.textPrimary),
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
                color: CoreColors.textPrimary,
              ),
              onPressed: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => CalcMdc()));
              },
            )
          ],
        ),
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              CoreStringsMdc.text1_mdc,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              CoreStringsMdc.text2_mdc,
              style: TextStyle(fontSize: 16.0, color: Colors.red),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              CoreStringsMdc.text3_mdc,
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
              CoreStringsMdc.text4_mdc,
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
              CoreStringsMdc.text5_mdc,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
        ])
      ),
      );
  }
}
