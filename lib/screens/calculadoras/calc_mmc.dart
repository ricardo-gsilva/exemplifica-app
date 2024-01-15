import 'package:exemplifica_git/constants/core_colors.dart';
import 'package:exemplifica_git/constants/core_strings.dart';
import 'package:exemplifica_git/controller/model_mmc.dart';
import 'package:exemplifica_git/screens/components/row_buttons.dart';
import 'package:exemplifica_git/screens/home_page.dart';
import 'package:flutter/material.dart';

class CalcMmc extends StatefulWidget {
  @override
  _CalcMmcState createState() => _CalcMmcState();
}

class _CalcMmcState extends State<CalcMmc> {
  final ModelMmc modelMmc = ModelMmc();
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
          CoreStrings.titleMmc,
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
                  "Digite 2 números para efetuar o cálculo do MMC!",
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 15, left: 15),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * .27,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            hintText: "Valor 1",
                            labelText: "",
                            labelStyle: TextStyle(color: CoreColors.textPrimary)),
                        textAlign: TextAlign.center,
                        style: TextStyle(color: CoreColors.textPrimary, fontSize: 23.0),
                        controller: modelMmc.val1,
                        maxLength: 5,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * .27,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            hintText: "Valor 2",
                            labelText: "",
                            labelStyle: TextStyle(color: CoreColors.textPrimary)),
                        textAlign: TextAlign.center,
                        style: TextStyle(color: CoreColors.textPrimary, fontSize: 23.0),
                        controller: modelMmc.val2,
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
                    modelMmc.verificarCampos();
                    visible = !visible;
                  });
                }),
                onTapSecond: (() {
                  setState(() {
                    modelMmc.resetCampos();
                    visible = !visible;
                  });
                }),
              ),
              Visibility(
                visible: visible,
                child: Column(
                  children: [
                    Padding(
                  padding: EdgeInsets.only(left: 10, right: 10, top: 15),
                  child: Text(
                    modelMmc.resultMmc,
                    textAlign: TextAlign.left,
                    style: TextStyle(color: CoreColors.textPrimary, fontSize: 21.0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  child: Text(
                    modelMmc.resultMmc1,
                    textAlign: TextAlign.left,
                    style: TextStyle(color: CoreColors.textPrimary, fontSize: 21.0),
                  ),
                ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
          color: CoreColors.textPrimary,
          height: MediaQuery.of(context).size.height * 0.1),
    );
  }
}
