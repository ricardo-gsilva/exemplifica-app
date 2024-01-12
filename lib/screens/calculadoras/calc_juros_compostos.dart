import 'package:exemplifica_git/constants/core_strings.dart';
import 'package:exemplifica_git/controller/model_juros_compostos.dart';
import 'package:exemplifica_git/screens/components/row_buttons.dart';
import 'package:exemplifica_git/screens/home_page.dart';
import 'package:flutter/material.dart';

class CalcJurosC extends StatefulWidget {
  @override
  _CalcJurosCState createState() => _CalcJurosCState();
}

class _CalcJurosCState extends State<CalcJurosC> {
  double height = 0;
  double width = 0;
  bool visible = false;

  final ModelJurosCompostos modelJurosCompostos = ModelJurosCompostos();

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width * 0.35;
    height = MediaQuery.of(context).size.height * 0.1;
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade50,
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text(
          CoreStrings.titleJurosCompostos,
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
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
              child: Column(children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
              child: Text(
                "Digite os valores de Capital, taxa mensal de juros e tempo em meses.",
                style: TextStyle(fontSize: 18.0),
              ),
            ),
            Container(
              height: 55,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "M = C(1 + i)",
                    style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.red,
                        fontWeight: FontWeight.bold),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(" t",
                        style: TextStyle(
                            fontSize: 25.0,
                            color: Colors.red,
                            fontWeight: FontWeight.bold)),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 5, left: 5, top: 5),
                      child: Text(
                        "Capital:",
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 5, left: 5),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * .25,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              hintText: "capital(R\$)",
                              labelText: "",
                              labelStyle: TextStyle(color: Colors.black87)),
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black, fontSize: 23.0),
                          controller: modelJurosCompostos.c,
                          maxLength: 9,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 5, left: 5, top: 5),
                      child: Text(
                        "Taxa:",
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 5, left: 5),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * .25,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              hintText: "% a.m",
                              labelText: "",
                              labelStyle: TextStyle(color: Colors.black87)),
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black, fontSize: 23.0),
                          controller: modelJurosCompostos.i,
                          maxLength: 4,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 5, left: 5, top: 5),
                      child: Text(
                        "Meses:",
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 5, left: 5),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * .25,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              hintText: "Tempo",
                              labelText: "",
                              labelStyle: TextStyle(color: Colors.black87)),
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black, fontSize: 23.0),
                          controller: modelJurosCompostos.t,
                          maxLength: 3,
                        ),
                      ),
                    ),
                  ],
                )
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
                  modelJurosCompostos.verificarCampos();
                  visible = !visible;
                });
              }),
              onTapSecond: (() {
                setState(() {
                  modelJurosCompostos.resetCampos();
                  visible = !visible;
                });
              }),
            ),
            Visibility(
              visible: visible,
              child: Padding(
                padding: EdgeInsets.only(right: 5, left: 5),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                          left: 10, right: 10, bottom: 3, top: 30),
                      child: Text(
                        modelJurosCompostos.resultjC,
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.black, fontSize: 21.0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 10, top: 5),
                      child: Text(
                        modelJurosCompostos.resultjC_1,
                        style: TextStyle(
                            fontSize: 35.0,
                            color: Colors.red,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]))),
      bottomNavigationBar: Container(
          color: Colors.black,
          height: MediaQuery.of(context).size.height * 0.1),
    );
  }
}
