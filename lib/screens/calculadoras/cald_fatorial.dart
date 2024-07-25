import 'package:exemplifica/utils/constants/core_colors.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/controller/controller_fatorial.dart';
import 'package:exemplifica/components/row_buttons.dart';
import 'package:exemplifica/components/text_field_input.dart';
import 'package:exemplifica/screens/home_page.dart';
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
        backgroundColor: CoreColors.appBarColor,
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
                padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Text(
                  "Digite um número para ver o cálculo do fatorial.\n\nObs: O valor máximo da calculadora é 15.",
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: CoreColors.appBarColor,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Column(
                  children: [
                    TextFieldInput(
                      title: "Digite o valor:",
                      hintText: "valor",
                      controller: modelFatorial.val1,
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
                  ],
                ),
              ),
              Visibility(
                visible: modelFatorial.visible,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        modelFatorial.resultFat,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: CoreColors.textPrimary, fontSize: 21.0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                      child: Text(
                        modelFatorial.resultFinal,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: CoreColors.textPrimary, fontSize: 26.0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        modelFatorial.infoFatorial,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: CoreColors.textPrimary, fontSize: 21.0),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    modelFatorial.val1.dispose();
    super.dispose();
  }
}
