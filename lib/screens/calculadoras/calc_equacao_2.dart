import 'package:exemplifica_git/constants/core_colors.dart';
import 'package:exemplifica_git/constants/core_strings.dart';
import 'package:exemplifica_git/controller/model_equacao_2.dart';
import 'package:exemplifica_git/screens/home_page.dart';
import 'package:exemplifica_git/screens/widgets/button_custom.dart';
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
        backgroundColor: Colors.lightBlue,
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
            padding: const EdgeInsets.only(left: 10, right: 10, top: 20),                
            child: Column(
              children: <Widget>[
                Text(
                  "Digite os valores de 'a', 'b' e 'c' para montar a equação. O valor máximo é de 999 para cada campo.",
                  style: TextStyle(fontSize: 18.0),
                ),
                Text(
                  "ax² + bx + c = 0",
                  style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.red,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Valor de "a":'),
                            Padding(
                              padding: EdgeInsets.only(right: 2, left: 15),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * .18,
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                      hintText: "a",
                                      labelText: "",
                                      labelStyle:
                                          TextStyle(color: CoreColors.textPrimary)),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: CoreColors.textPrimary, fontSize: 21.0),
                                  controller: modelEquacao2.val1,
                                  maxLength: 3,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Valor de "b":'),
                            Padding(
                              padding: EdgeInsets.only(right: 2, left: 15),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * .18,
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                      hintText: "b",
                                      labelText: "",
                                      labelStyle:
                                          TextStyle(color: CoreColors.textPrimary)),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: CoreColors.textPrimary, fontSize: 21.0),
                                  controller: modelEquacao2.val2,
                                  maxLength: 3,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Valor de "c":'),
                            Padding(
                              padding: EdgeInsets.only(right: 2, left: 15),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * .18,
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                      hintText: "c",
                                      labelText: "",
                                      labelStyle:
                                          TextStyle(color: CoreColors.textPrimary)),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: CoreColors.textPrimary, fontSize: 21.0),
                                  controller: modelEquacao2.val3,
                                  maxLength: 3,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        ButtonBase(
                          onTap: (() {
                            setState(() {
                              modelEquacao2.verificarCampo();
                              visible = !visible;
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
                    )
                  ],
                ),
                Visibility(
                  visible: visible,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: 10, right: 10, top: 10, bottom: 5),
                        child: Text(
                          modelEquacao2.resultEq2,
                          textAlign: TextAlign.left,
                          style: TextStyle(color: CoreColors.textPrimary, fontSize: 21.0),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 10, right: 10, top: 5, bottom: 5),
                        child: Text(
                          modelEquacao2.resultEq2_1,
                          textAlign: TextAlign.left,
                          style: TextStyle(color: CoreColors.textPrimary, fontSize: 21.0),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 10, right: 10, top: 5, bottom: 5),
                        child: Text(
                          modelEquacao2.resultEq2_2,
                          textAlign: TextAlign.left,
                          style: TextStyle(color: CoreColors.textPrimary, fontSize: 21.0),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 10, right: 10, top: 5, bottom: 5),
                        child: Text(
                          modelEquacao2.resultEq2_3,
                          textAlign: TextAlign.left,
                          style: TextStyle(color: CoreColors.textPrimary, fontSize: 21.0),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 10, right: 10, top: 5, bottom: 5),
                        child: Text(
                          modelEquacao2.resultEq2_4,
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
      ),
      bottomNavigationBar: Container(
          color: CoreColors.textPrimary,
          height: MediaQuery.of(context).size.height * 0.1),
    );
  }
}
