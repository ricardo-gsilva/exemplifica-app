import 'package:exemplifica_git/constants/core_strings.dart';
import 'package:exemplifica_git/controller/model_mdc.dart';
import 'package:exemplifica_git/screens/components/row_buttons.dart';
import 'package:exemplifica_git/screens/home_page.dart';
import 'package:flutter/material.dart';

class CalcMdc extends StatefulWidget {
  @override
  _CalcMdcState createState() => _CalcMdcState();
}

class _CalcMdcState extends State<CalcMdc> {
  final ModelMdc modelMdc = ModelMdc();
  double height = 0;
  double width = 0;
  bool visible = false;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width * 0.35;
    height = MediaQuery.of(context).size.height * 0.1;
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
                "Digite 2 números para efetuar o cálculo do MDC!",
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: 15, left: 15),
                  child: SizedBox(
                    width: width * 0.8,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: "Valor 1",
                          labelText: "",
                          labelStyle: TextStyle(color: Colors.black87)),
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black, fontSize: 23.0),
                      controller: modelMdc.val1,
                      maxLength: 5,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: SizedBox(
                    width: width * 0.8,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: "Valor 2",
                          labelText: "",
                          labelStyle: TextStyle(color: Colors.black87)),
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black, fontSize: 23.0),
                      controller: modelMdc.val2,
                      maxLength: 5,
                    ),
                  ),
                ),
              ],
            ),
            RowButtons(
              titleFirst: CoreStrings.calc,
              titleSecond: CoreStrings.clear,
              paddingTop: 10,
              height: height,
              width: width,
              onTapFirst: (() {
                setState(() {
                  modelMdc.verificarCampos();
                  visible = !visible;
                });
              }),
              onTapSecond: (() {
                setState(() {
                  modelMdc.resetCampos();
                  visible = !visible;
                });
              }),
            ),
            Visibility(
              visible: visible,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      modelMdc.resultMdc,
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.black, fontSize: 21.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 10, right: 10, top: 5, bottom: 10),
                    child: Text(
                      modelMdc.resultMdc1,
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.black, fontSize: 21.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 10, right: 10, top: 5, bottom: 25),
                    child: Text(
                      modelMdc.resultMdc2,
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.black, fontSize: 21.0),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
          color: Colors.black,
          height: MediaQuery.of(context).size.height * 0.1),
    );
  }
}
