import 'package:exemplifica_git/constants/core_colors.dart';
import 'package:exemplifica_git/constants/core_strings.dart';
import 'package:exemplifica_git/controller/model_regra_de_3.dart';
import 'package:exemplifica_git/screens/components/row_buttons.dart';
import 'package:exemplifica_git/screens/home_page.dart';
import 'package:flutter/material.dart';

class CalcRegraDe3 extends StatefulWidget {
  @override
  _CalcRegraDe3State createState() => _CalcRegraDe3State();
}

class _CalcRegraDe3State extends State<CalcRegraDe3> {
  final ModelRegraDe3 modelRegraDe3 = ModelRegraDe3();
  double height = 0;
  double width = 0;
  bool visible = false;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width * 0.35;
    height = MediaQuery.of(context).size.height * 0.1;
    return Scaffold(
      backgroundColor: CoreColors.colorBackground,
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text(
          CoreStrings.titleRegraDe3,
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
                "Digite os valores nos campos abaixo, para encontrar a proporcionalidade entre eles.",
                style: TextStyle(fontSize: 18.0),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 10, top: 10, right: 10),
                  child: Text(
                    "Atributo 1",
                    style: TextStyle(fontSize: 23.0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, top: 10, right: 10),
                  child: Text(
                    "Atributo 2",
                    style: TextStyle(fontSize: 23.0),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: 15, left: 15),
                  child: SizedBox(
                    width: width * 0.8,
                    height: height * 1.3,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: "Valor 1",
                          labelText: "",
                          labelStyle: TextStyle(color: CoreColors.textPrimary)),
                      textAlign: TextAlign.center,
                      style: TextStyle(color: CoreColors.textPrimary, fontSize: 23.0),
                      controller: modelRegraDe3.val1,
                      maxLength: 10,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: SizedBox(
                    width: width * 0.8,
                    height: height * 1.3,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: "Valor 3",
                          labelText: "",
                          labelStyle: TextStyle(color: CoreColors.textPrimary)),
                      textAlign: TextAlign.center,
                      style: TextStyle(color: CoreColors.textPrimary, fontSize: 23.0),
                      controller: modelRegraDe3.val3,
                      maxLength: 10,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: 15, left: 15),
                  child: SizedBox(
                    width: width * 0.8,
                    height: height * 1.3,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: "Valor 2",
                          labelText: "",
                          labelStyle: TextStyle(color: CoreColors.textPrimary)),
                      textAlign: TextAlign.center,
                      style: TextStyle(color: CoreColors.textPrimary, fontSize: 23.0),
                      controller: modelRegraDe3.val2,
                      maxLength: 10,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, right: 60, left: 45),
                  child: Text(
                    "X",
                    textAlign: TextAlign.center,
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
                  modelRegraDe3.verificarCampos();
                  visible = !visible;
                });
              }),
              onTapSecond: (() {
                setState(() {
                  modelRegraDe3.resetCampos();
                  visible = !visible;
                });
              }),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                modelRegraDe3.resultRegra3,
                textAlign: TextAlign.left,
                style: TextStyle(color: CoreColors.textPrimary, fontSize: 21.0),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
          color: CoreColors.textPrimary,
          height: MediaQuery.of(context).size.height * 0.1),
    );
  }
}
