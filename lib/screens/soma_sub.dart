import 'package:exemplifica/utils/constants/core_colors.dart';
import 'package:exemplifica/screens/home_page.dart';
import 'package:exemplifica/utils/constants/strings/strings_soma_sub.dart';
import 'package:flutter/material.dart';

class SomaSubtracao extends StatefulWidget {
  @override
  _SomaSubtracaoState createState() => _SomaSubtracaoState();
}

class _SomaSubtracaoState extends State<SomaSubtracao> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CoreColors.colorBackground,
      appBar: AppBar(
          backgroundColor: CoreColors.appBarColor,
          title: Text(
            CoreStringsSomaSub.titleSomaSub,
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
              // Navigator.of(context).pushAndRemoveUntil(
              //     MaterialPageRoute(builder: (context) => HomePage()),
              //     (Route<dynamic> route) => false);
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
                CoreStringsSomaSub.text1_SomaSub,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ],
        )
      ),
      );
  }
}
