import 'package:exemplifica_git/constants/core_colors.dart';
import 'package:exemplifica_git/constants/core_strings.dart';
import 'package:exemplifica_git/controller/model_fatorial.dart';
import 'package:exemplifica_git/screens/components/row_buttons.dart';
import 'package:exemplifica_git/screens/home_page.dart';
import 'package:flutter/material.dart';

class CalcFatorial extends StatefulWidget {
  @override
  _CalcFatorialState createState() => _CalcFatorialState();
}

class _CalcFatorialState extends State<CalcFatorial> {
  final ModelFatorial modelFatorial = ModelFatorial();
  double height = 0;
  double width = 0;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width * 0.4;
    height = MediaQuery.of(context).size.height * 0.1;
    return Scaffold(
      backgroundColor: CoreColors.colorBackground,
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text(
          CoreStrings.titleFatorial,
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
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
                child: Text(
                  "Digite um número para ver o cálculo do fatorial.",
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                        left: 10, right: 10, top: 5, bottom: 10),
                    child: Text(
                      "Digite o valor:",
                      textAlign: TextAlign.left,
                      style: TextStyle(color: CoreColors.textPrimary, fontSize: 18.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 15, left: 15),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * .27,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            hintText: "valor",
                            labelText: "",
                            labelStyle: TextStyle(color: CoreColors.textPrimary)),
                        textAlign: TextAlign.center,
                        style: TextStyle(color: CoreColors.textPrimary, fontSize: 23.0),
                        controller: modelFatorial.val1,
                        maxLength: 2,
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
                    modelFatorial.verificarCampos();
                  });
                }),
                onTapSecond: (() {
                  setState(() {
                    modelFatorial.resetCampos();
                  });
                }),
              ),                
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10, top: 5),
                child: Text(
                  modelFatorial.resultFat,
                  textAlign: TextAlign.left,
                  style: TextStyle(color: CoreColors.textPrimary, fontSize: 21.0),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 10, right: 10, bottom: 10),
                child: Text(
                  modelFatorial.resultFat1,
                  textAlign: TextAlign.left,
                  style: TextStyle(color: CoreColors.textPrimary, fontSize: 21.0),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(color: CoreColors.textPrimary, height: MediaQuery.of(context).size.height * 0.1),
    );
  }
}
