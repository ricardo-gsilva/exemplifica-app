import 'package:exemplifica/utils/constants/core_colors.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/controller/controller_equacao_2.dart';
import 'package:exemplifica/components/text_field_input.dart';
import 'package:exemplifica/screens/home_page.dart';
import 'package:exemplifica/widgets/button_custom.dart';
import 'package:flutter/material.dart';

class CalcEquacao2 extends StatefulWidget {
  @override
  _CalcEquacao2State createState() => _CalcEquacao2State();
}

class _CalcEquacao2State extends State<CalcEquacao2> {
  final ModelEquacao2 modelEquacao2 = ModelEquacao2();
  bool visible = false;
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
          CoreStrings.titleEquacao2,
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
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Column(
              children: <Widget>[
                Text(
                  "Digite os valores de 'a', 'b' e 'c' para montar a equação. O valor máximo é de 999 para cada campo.",
                  style: TextStyle(fontSize: 18.0),
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
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "ax² + bx + c = 0",
                          style: TextStyle(
                              fontSize: 23.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Column(
                        children: [
                          TextFieldInput(
                            title: "'a':",
                            hintText: "a",
                            controller: modelEquacao2.val1,
                          ),
                          TextFieldInput(
                            title: "'b':",
                            hintText: "b",
                            controller: modelEquacao2.val2,
                          ),
                          TextFieldInput(
                            title: "'c':",
                            hintText: "c",
                            controller: modelEquacao2.val3,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ButtonBase(
                            onTap: (() {
                              setState(() {                                
                                modelEquacao2.verificarCampo();
                              });
                            }),
                            title: 'Calcular',
                            height: height,
                            width: width,
                          ),
                          ButtonBase(
                            onTap: (() {
                              setState(() {
                                modelEquacao2.resetCampos();
                                visible = !visible;
                              });
                            }),
                            title: 'Limpar',
                            height: height,
                            width: width,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Visibility(
                  visible: modelEquacao2.visible,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: 10, right: 10, top: 5, bottom: 5),
                        child: Text(
                          modelEquacao2.resultEq2,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: CoreColors.textPrimary, fontSize: 21.0),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 10, right: 10, top: 5, bottom: 5),
                        child: Text(
                          modelEquacao2.resultEq2_1,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: CoreColors.textPrimary, fontSize: 21.0),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 10, right: 10, top: 5, bottom: 5),
                        child: Text(
                          modelEquacao2.resultEq2_2,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: CoreColors.textPrimary, fontSize: 21.0),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 10, right: 10, top: 5, bottom: 5),
                        child: Text(
                          modelEquacao2.resultEq2_3,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: CoreColors.textPrimary, fontSize: 21.0),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 10, right: 10, top: 5, bottom: 5),
                        child: Text(
                          modelEquacao2.resultEq2_4,
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
      ),
    );
  }

  @override
  void dispose() {
    modelEquacao2.val1.dispose();
    modelEquacao2.val2.dispose();
    modelEquacao2.val3.dispose();
    super.dispose();
  }
}
