import 'package:exemplifica_git/constants/core_strings.dart';
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
          )
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
      )
    );
  }
}
