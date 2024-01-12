import 'package:exemplifica_git/constants/core_strings.dart';
import 'package:exemplifica_git/screens/home_page.dart';
import 'package:flutter/material.dart';

class RegrasSinais extends StatefulWidget {
  @override
  _RegrasSinaisState createState() => _RegrasSinaisState();
}

class _RegrasSinaisState extends State<RegrasSinais> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade50,
      appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: Text(
            CoreStrings.titleRegraSinal,
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
                CoreStrings.text1_RegraSinal,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * .6,
                  child: Image.asset("images/regras_sinal/regras_sinais_2.png"),
                )),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                CoreStrings.text2_RegraSinal,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                CoreStrings.text3_RegraSinal,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * .4,
                  child: Image.asset("images/regras_sinal/regras_sinais_5.png"),
                )),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                CoreStrings.text4_RegraSinal,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                CoreStrings.text5_RegraSinal,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * .4,
                  child: Image.asset("images/regras_sinal/regras_sinais_3.png"),
                )),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                CoreStrings.text6_RegraSinal,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                CoreStrings.text7_RegraSinal,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                CoreStrings.text8_RegraSinal,
                style: TextStyle(fontSize: 16.0, color: Colors.red),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                CoreStrings.text9_RegraSinal,
                style: TextStyle(fontSize: 16.0, color: Colors.red),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                CoreStrings.text10_RegraSinal,
                style: TextStyle(fontSize: 16.0, color: Colors.red),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                CoreStrings.text11_RegraSinal,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 40),
              child: Text(
                CoreStrings.text12_RegraSinal,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(color: Colors.black, height: MediaQuery.of(context).size.height * 0.1),
    );
  }
}
