import 'package:exemplifica_git/constants/core_strings.dart';
import 'package:exemplifica_git/controller/model_juros_simples.dart';
import 'package:exemplifica_git/screens/components/row_buttons.dart';
import 'package:exemplifica_git/screens/home_page.dart';
import 'package:flutter/material.dart';

class CalcJurosS extends StatefulWidget {
  @override
  _CalcJurosSState createState() => _CalcJurosSState();
}

class _CalcJurosSState extends State<CalcJurosS> {
  final ModelJurosSimples modelJurosSimples = ModelJurosSimples();
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
          CoreStrings.titleJurosSimples,
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
          child: Column(children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
          child: Text(
            "Digite os valores. Preencha ao menos 3 campos!",
            style: TextStyle(fontSize: 18.0),
          ),
        ),
        Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 5, left: 5),
                  child: Column(
                    children: [
                      Text(
                        "Capital:",
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .3,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              hintText: "capital(R\$)",
                              labelText: "",
                              labelStyle: TextStyle(color: Colors.black87)),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black, fontSize: 23.0),
                          controller: modelJurosSimples.c,
                          maxLength: 9,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 5, left: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Taxa:",
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .3,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              hintText: "% a.m",
                              labelText: "",
                              labelStyle: TextStyle(color: Colors.black87)),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black, fontSize: 23.0),
                          controller: modelJurosSimples.i,
                          maxLength: 4,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 5, left: 5),
                  child: Column(
                    children: [
                      Text(
                        "Meses:",
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .3,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              hintText: "Tempo",
                              labelText: "",
                              labelStyle: TextStyle(color: Colors.black87)),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black, fontSize: 23.0),
                          controller: modelJurosSimples.t,
                          maxLength: 3,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 5, left: 5),
                  child: Column(
                    children: [
                      Text(
                        "Juros:",
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .3,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              hintText: "%",
                              labelText: "",
                              labelStyle: TextStyle(color: Colors.black87)),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black, fontSize: 23.0),
                          controller: modelJurosSimples.j,
                          maxLength: 9,
                        ),
                      ),
                    ],
                  ),
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
                  modelJurosSimples.verificarCampos();
                  visible = !visible;
                });
              }),
              onTapSecond: (() {
                setState(() {
                  modelJurosSimples.resetCampos();
                  visible = !visible;
                });
              }),
            ),
            Visibility(
              visible: visible,
              child: Padding(
                padding:
                    EdgeInsets.only(left: 10, right: 10, bottom: 3, top: 30),
                child: Text(
                  modelJurosSimples.resultjS,
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.black, fontSize: 20.0),
                ),
              ),
            ),
          ],
        ),
        Visibility(
          visible: visible,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10, top: 5),
                child: Text(
                  modelJurosSimples.resultjS_1,
                  style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.red,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: 10, right: 10, bottom: 30, top: 15),
                child: Text(
                  modelJurosSimples.resultjS_2,
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.black, fontSize: 20.0),
                ),
              ),
            ],
          ),
        )
      ])
              ),
      bottomNavigationBar: Container(
          color: Colors.black,
          height: MediaQuery.of(context).size.height * 0.1),
    );
  }
}
