import 'package:exemplifica_git/constants/core_strings.dart';
import 'package:exemplifica_git/screens/home_page.dart';
import 'package:flutter/material.dart';

class Parentesis extends StatefulWidget {
  @override
  _ParentesisState createState() => _ParentesisState();
}

class _ParentesisState extends State<Parentesis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade50,
      appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: Text(
            CoreStrings.titleParentesis,
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
          actions: [
            IconButton(
            icon: Icon(
              Icons.home,
              color: Colors.black,
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
        child: Column(
          children: <Widget>[            
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                CoreStrings.text1_parentesis,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * .6,
                  child: Image.asset("images/parentesis/parentesis_1.png"),
                )),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                CoreStrings.text2_parentesis,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * .7,
                  child: Image.asset("images/parentesis/parentesis_2.png"),
                )),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                CoreStrings.text3_parentesis,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * .4,
                  child: Image.asset("images/parentesis/parentesis_3.png"),
                )),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                CoreStrings.text4_parentesis,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * .6,
                  child: Image.asset("images/parentesis/parentesis_4.png"),
                )),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                CoreStrings.text5_parentesis,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * .6,
                  child: Image.asset("images/parentesis/parentesis_5.png"),
                )),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                CoreStrings.text6_parentesis,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * .4,
                  child: Image.asset("images/parentesis/parentesis_6.png"),
                )),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                CoreStrings.text7_parentesis,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 40),
                child: Container(
                  width: MediaQuery.of(context).size.width * .4,
                  child: Image.asset("images/parentesis/parentesis_7.png"),
                )),
          ],
        ),
      ),
      bottomNavigationBar: Container(color: Colors.black, height: MediaQuery.of(context).size.height * 0.1),
    );
  }
}
