import 'package:exemplifica/utils/constants/core_colors.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/controller/controller_mmc.dart';
import 'package:exemplifica/components/row_buttons.dart';
import 'package:exemplifica/components/text_field_input.dart';
import 'package:exemplifica/screens/home_page.dart';
import 'package:flutter/material.dart';

class CalcMmc extends StatefulWidget {
  @override
  _CalcMmcState createState() => _CalcMmcState();
}

class _CalcMmcState extends State<CalcMmc> {
  final ModelMmc modelMmc = ModelMmc();
  double height = 0;
  double width = 0;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width * 0.35;
    height = MediaQuery.of(context).size.height * 0.1;
    return Scaffold(
      backgroundColor: CoreColors.colorBackground,
      appBar: AppBar(
        backgroundColor: CoreColors.appBarColor,
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
                padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Text(
                  "Digite 2 números para efetuar o cálculo do MMC!",
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextFieldInput(
                      title: "Valor 1:",
                      hintText: "",
                      controller: modelMmc.val1,
                    ),
                    TextFieldInput(
                      title: "Valor 2:",
                      hintText: "",
                      controller: modelMmc.val2,
                    ),                  
                    RowButtons(
                      titleFirst: CoreStrings.calc,
                      titleSecond: CoreStrings.clear,
                      paddingTop: 5,
                      height: height,
                      width: width,
                      onTapFirst: (() {
                        setState(() {
                          modelMmc.verificarCampos();
                        });
                      }),
                      onTapSecond: (() {
                        setState(() {
                          modelMmc.resetCampos();
                        });
                      }),
                    ),
                  ],
                ),
              ),              
              Visibility(
                visible: modelMmc.visible,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 10, top: 5),
                      child: Text(
                        modelMmc.resultMmc,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: CoreColors.textPrimary, fontSize: 21.0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                      child: Text(
                        modelMmc.resultMmc1,
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
    modelMmc.val1.dispose();
    modelMmc.val2.dispose();
    super.dispose();
  }
}
