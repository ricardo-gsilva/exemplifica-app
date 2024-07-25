import 'package:exemplifica/utils/constants/core_colors.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/controller/controller_equacao_1.dart';
import 'package:exemplifica/components/row_buttons.dart';
import 'package:exemplifica/components/text_field_input.dart';
import 'package:exemplifica/screens/home_page.dart';
import 'package:flutter/material.dart';

class CalcEquacao1 extends StatefulWidget {
  @override
  _CalcEquacao1State createState() => _CalcEquacao1State();
}

class _CalcEquacao1State extends State<CalcEquacao1> {
  final ControllerEquacao1 calcEquacao_1 = ControllerEquacao1();
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
          CoreStrings.titleEquacao1,
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
                  CoreStrings.text1_CalcEquacao1,
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
                    Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Text(
                  CoreStrings.text2_CalcEquacao1,
                  style: TextStyle(
                      fontSize: 23.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 5),
                child: Text(
                  "Digite os valores de 'a' e 'b'",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
              TextFieldInput(
                title: "'a':",
                hintText: "a",
                controller: calcEquacao_1.val1
              ),
              TextFieldInput(
                title: "'b':",
                hintText: "b",
                controller: calcEquacao_1.val2
              ),
              RowButtons(
                titleFirst: CoreStrings.calc,
                titleSecond: CoreStrings.clear,
                paddingTop: 10,
                height: height,
                width: width,
                onTapFirst: (() {
                  setState(() {                    
                    calcEquacao_1.verificarCampo();
                  });
                }),
                onTapSecond: (() {
                  setState(() {
                    calcEquacao_1.resetCampos();
                  });
                }),
              ),         
                  ],
                ),
              ),     
              Padding(
                padding:
                    EdgeInsets.all(10),
                child: Text(
                  calcEquacao_1.resultEq1_1,
                  textAlign: TextAlign.left,
                  style: TextStyle(color: CoreColors.textPrimary, fontSize: 21.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    calcEquacao_1.val1.dispose();
    calcEquacao_1.val2.dispose();
    super.dispose();
  }
}
