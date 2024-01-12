import 'package:exemplifica_git/constants/core_strings.dart';
import 'package:exemplifica_git/screens/home_page.dart';
import 'package:flutter/material.dart';

class SomaSubtracao extends StatefulWidget {
  @override
  _SomaSubtracaoState createState() => _SomaSubtracaoState();
}

class _SomaSubtracaoState extends State<SomaSubtracao> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlue.shade50,
      appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: Text(
            CoreStrings.titleSomaSub,
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
              padding: EdgeInsets.fromLTRB(10, 10, 10, 40),
              child: Text(
                CoreStrings.text1_SomaSub,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ],
        )
      ),
      bottomNavigationBar: Container(color: Colors.black, height: MediaQuery.of(context).size.height * 0.1),
    );
  }
}
