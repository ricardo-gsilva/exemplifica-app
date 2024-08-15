import 'package:exemplifica/components/text_field_input.dart';
import 'package:exemplifica/utils/constants/core_colors.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/controller/controller_regra_de_3.dart';
import 'package:exemplifica/components/row_buttons.dart';
import 'package:exemplifica/screens/home_page.dart';
import 'package:flutter/material.dart';

class CalcRegraDe3 extends StatefulWidget {
  @override
  _CalcRegraDe3State createState() => _CalcRegraDe3State();
}

class _CalcRegraDe3State extends State<CalcRegraDe3> {
  final ModelRegraDe3 modelRegraDe3 = ModelRegraDe3();
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
              // Navigator.of(context).pushAndRemoveUntil(
              //     MaterialPageRoute(builder: (context) => HomePage()),
              //     (Route<dynamic> route) => false);
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Text(
                "Digite os valores nos campos abaixo, para encontrar a proporcionalidade entre eles.",
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
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Atributo 1",
                            style: TextStyle(fontSize: 23.0),
                          ),
                          TextFieldInput(
                            controller: modelRegraDe3.val1,
                            hintText: "",
                            title: "",
                          ),
                          TextFieldInput(
                            controller: modelRegraDe3.val2,
                            hintText: "",
                            title: "",
                          ),                      
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              "Atributo 2",
                              style: TextStyle(fontSize: 23.0),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 30),
                            child: TextFieldInput(
                              controller: modelRegraDe3.val3,
                              hintText: "",
                              title: "",
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 28),
                            child: Text(
                              "X",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 23.0),
                            ),
                          ),
                        ],
                      ),                                        
                    ],
                  ),
                  RowButtons1(
                        titleFirst: CoreStrings.calc,
                        titleSecond: CoreStrings.clear,
                        paddingTop: 10,
                        height: height,
                        width: width,
                        onTapFirst: (() {
                          setState(() {
                            modelRegraDe3.verificarCampos();
                          });
                        }),
                        onTapSecond: (() {
                          setState(() {
                            modelRegraDe3.resetCampos();
                          });
                        }),
                      ),
                ],
              ),
            ),
            Visibility(
              visible:  modelRegraDe3.visible,
              child: Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(
                  modelRegraDe3.resultRegra3,
                  textAlign: TextAlign.left,
                  style: TextStyle(color: CoreColors.textPrimary, fontSize: 21.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    modelRegraDe3.val1.dispose();
    modelRegraDe3.val2.dispose();
    modelRegraDe3.val3.dispose();
    super.dispose();
  }
}
