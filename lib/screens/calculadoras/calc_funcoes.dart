import 'package:exemplifica_git/constants/core_strings.dart';
import 'package:exemplifica_git/controller/model_funcoes.dart';
import 'package:exemplifica_git/screens/home_page.dart';
import 'package:exemplifica_git/screens/widgets/button_custom.dart';
import 'package:flutter/material.dart';

class CalcFuncoes extends StatefulWidget {
  @override
  _CalcFuncoesState createState() => _CalcFuncoesState();
}

class _CalcFuncoesState extends State<CalcFuncoes> {
  final ModelFuncoes modelFuncoes = ModelFuncoes();
  double height = 0;
  double width = 0;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width * 0.35;
    height = MediaQuery.of(context).size.height * 0.1;
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade50,
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text(
          CoreStrings.titleFuncoes,
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
                "Digite os valores para preencher a função.",
                style: TextStyle(fontSize: 18.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                "f(x) = ax + b = ?",
                style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.red,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text(
                        "a:",
                        style: TextStyle(
                            fontSize: 25.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * .3,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              hintText: "a",
                              labelText: "",
                              labelStyle: TextStyle(color: Colors.black87)),
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black, fontSize: 23.0),
                          controller: modelFuncoes.a,
                          maxLength: 6,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text(
                        "b:",
                        style: TextStyle(
                            fontSize: 25.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * .3,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              hintText: "b",
                              labelText: "",
                              labelStyle: TextStyle(color: Colors.black87)),
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black, fontSize: 23.0),
                          controller: modelFuncoes.b,
                          maxLength: 6,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 12, top: 30),
                      child: Text(
                        "Resultado:",
                        style: TextStyle(
                            fontSize: 25.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 0, left: 10),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * .3,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              hintText: "Tempo",
                              labelText: "",
                              labelStyle: TextStyle(color: Colors.black87)),
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black, fontSize: 23.0),
                          controller: modelFuncoes.r,
                          maxLength: 9,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ButtonBase(
                        onTap: (() {
                          setState(() {
                            modelFuncoes.verificarCampos();
                          });
                        }),
                        title: 'Calcular',
                        height: height,
                        width: width,
                      ),
                      ButtonBase(
                        onTap: (() {
                          setState(() {
                            modelFuncoes.resetCampos();
                          });
                        }),
                        title: 'Limpar',
                        height: height,
                        width: width,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 10, right: 10, bottom: 3, top: 30),
                  child: Text(
                    modelFuncoes.resultF,
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.black, fontSize: 25.0),
                  ),
                ),
              ],
            ),

/* -------------------------------------------JurosCompostos-----------------------------------------------*/

            Padding(
              padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 15),
              child: Text(
                modelFuncoes.resultF_1,
                style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.red,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ]))),
      bottomNavigationBar: Container(
          color: Colors.black,
          height: MediaQuery.of(context).size.height * 0.1),
    );
  }
}
