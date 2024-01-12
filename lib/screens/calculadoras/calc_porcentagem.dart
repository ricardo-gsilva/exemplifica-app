import 'package:exemplifica_git/constants/core_strings.dart';
import 'package:exemplifica_git/controller/model_porcentagem.dart';
import 'package:exemplifica_git/screens/components/row_buttons.dart';
import 'package:exemplifica_git/screens/home_page.dart';
import 'package:flutter/material.dart';

class CalcPorcentagem extends StatefulWidget {
  @override
  _CalcPorcentagemState createState() => _CalcPorcentagemState();
}

class _CalcPorcentagemState extends State<CalcPorcentagem> {
  final ModelPorcentagem modelPorcentagem = ModelPorcentagem();
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
          CoreStrings.titlePorcentagem,
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
              padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
              child: Text(
                "Digite os valores nos campos abaixo para calcular a porcentagem.",
                style: TextStyle(fontSize: 18.0),
              ),
            ),              
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 10, top: 20, right: 10),
                  child: Text(
                    "Atributo 1",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, top: 20, right: 10),
                  child: Text(
                    "Atributo 2",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: 50),
                  child: SizedBox(
                    width: width * 0.7,
                    height: height * 1.25,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: "Valor 1",
                          labelText: "",
                          labelStyle: TextStyle(color: Colors.black87)),
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black, fontSize: 23.0),
                      controller: modelPorcentagem.val1,
                      maxLength: 10,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, right: 30),
                  child: Text(
                    "100",
                    style: TextStyle(fontSize: 23.0),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: 70),
                  child: SizedBox(
                    width: width * 0.7,
                    height: height * 1.25,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: "Valor 2",
                          labelText: "",
                          labelStyle: TextStyle(color: Colors.black87)),
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black, fontSize: 23.0),
                      controller: modelPorcentagem.val2,
                      maxLength: 10,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, right: 30),
                  child: Text(
                    "X",
                    style: TextStyle(fontSize: 23.0),
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
                  modelPorcentagem.verificarCampos();
                  visible = !visible;
                });
              }),
              onTapSecond: (() {
                setState(() {
                  modelPorcentagem.resetCampos();
                  visible = !visible;
                });
              }),
            ),
            Visibility(
              visible: visible,
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  modelPorcentagem.resultPorcent,
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.black, fontSize: 21.0),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
          color: Colors.black,
          height: MediaQuery.of(context).size.height * 0.1),
    );
  }
}
