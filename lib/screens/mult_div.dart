import 'package:exemplifica_git/constants/core_colors.dart';
import 'package:exemplifica_git/constants/core_strings.dart';
import 'package:exemplifica_git/screens/home_page.dart';
import 'package:flutter/material.dart';

class MultiplicaDiv extends StatefulWidget {
  @override
  _MultiplicaDivState createState() => _MultiplicaDivState();
}

class _MultiplicaDivState extends State<MultiplicaDiv> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CoreColors.colorBackground,
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: Text(
            CoreStrings.titleMultipDiv,
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
          actions: [
            IconButton(
              icon: Icon(
                Icons.home,
                color: CoreColors.textPrimary,
              ),
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => HomePage()),
                    (Route<dynamic> route) => false);
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              CoreStrings.text1_MultiplicaDiv,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: MediaQuery.of(context).size.width * .4,
                child: Image.asset("images/mult_div/multiplica_divi_2.png"),
              )),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              CoreStrings.text2_MultiplicaDiv,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              CoreStrings.text3_MultiplicaDiv,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: MediaQuery.of(context).size.width * .4,
                child: Image.asset("images/mult_div/multiplica_divi_3.png"),
              )),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              CoreStrings.text4_MultiplicaDiv,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: MediaQuery.of(context).size.width * .4,
                child: Image.asset("images/mult_div/multiplica_divi_4.png"),
              )),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              CoreStrings.text5_MultiplicaDiv,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: MediaQuery.of(context).size.width * .4,
                child: Image.asset("images/mult_div/multiplica_divi_5.png"),
              )),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              CoreStrings.text6_MultiplicaDiv,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              CoreStrings.text7_MultiplicaDiv,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: MediaQuery.of(context).size.width * .5,
                child: Image.asset("images/mult_div/multiplica_divi_11.png"),
              )),
          Icon(
            Icons.close,
            color: Colors.red,
            size: 50,
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              CoreStrings.text8_MultiplicaDiv,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: MediaQuery.of(context).size.width * .5,
                child: Image.asset("images/mult_div/multiplica_divi_12.png"),
              )),
          Icon(
            Icons.check,
            color: Colors.red,
            size: 50,
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              CoreStrings.text9_MultiplicaDiv,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              CoreStrings.text10_MultiplicaDiv,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              CoreStrings.text11_MultiplicaDiv,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: MediaQuery.of(context).size.width * .55,
                child: Image.asset("images/mult_div/multiplica_divi_8.png"),
              )),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              CoreStrings.text12_MultiplicaDiv,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: MediaQuery.of(context).size.width * .35,
                child: Image.asset("images/mult_div/multiplica_divi_9.png"),
              )),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              CoreStrings.text13_MultiplicaDiv,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: MediaQuery.of(context).size.width * .4,
                child: Image.asset("images/mult_div/multiplica_divi_10.png"),
              )),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 40),
            child: Text(
              CoreStrings.text14_MultiplicaDiv,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
        ])
      ),
      bottomNavigationBar: Container(color: CoreColors.textPrimary, height: MediaQuery.of(context).size.height * 0.1),
    );
  }
}
