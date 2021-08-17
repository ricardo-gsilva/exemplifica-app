import 'package:exemplifica_git/ad_mob/ad_mob.dart';
import 'package:exemplifica_git/ad_mob/banner_ad_mob.dart';
import 'package:exemplifica_git/components/drawer_comp/drawer_page.dart';
import 'package:exemplifica_git/model_calc/model_equacao_2.dart';
import 'package:flutter/material.dart';

class CalcEquacao2 extends StatefulWidget {
  @override
  _CalcEquacao2State createState() => _CalcEquacao2State();
}

class _CalcEquacao2State extends State<CalcEquacao2> {  

  final AdMob adMob = AdMob();

  final ModelEquacao2 modelEquacao2 = ModelEquacao2();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/backapp.png"), fit: BoxFit.cover)),
          child: Scaffold(
            appBar: AppBar(
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.reply),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ],
            ),
            drawer: DrawerPage(),
            backgroundColor: Colors.transparent,
            body: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                          left: 0.0, top: 5.0, right: 0.0, bottom: 5.0),
                      child: Image.asset("images/calculadoras/calc_eq2.png"),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        "Digite os valores de a, b e c para montar a equação. O valor máximo é de 999 para cada campo.",
                        style: TextStyle(fontSize: 25.0, color: Colors.red),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        "ax² + bx + c = 0",
                        style: TextStyle(fontSize: 25.0, color: Colors.red, fontWeight: FontWeight.bold ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 2, left: 15),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * .18,
                            child: TextField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  hintText: "a",
                                  labelText: "",
                                  labelStyle: TextStyle(color: Colors.black87)),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black, fontSize: 21.0),
                              controller: modelEquacao2.val1,
                              maxLength: 3,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 2, right: 2, top: 5, bottom: 10),
                          child: Text(
                            "X² + ",
                            textAlign: TextAlign.left,
                            style: TextStyle(color: Colors.black, fontSize: 20.0),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 2, left: 2),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * .18,
                            child: TextField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  hintText: "b",
                                  labelText: "",
                                  labelStyle: TextStyle(color: Colors.black87)),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black, fontSize: 21.0),
                              controller: modelEquacao2.val2,
                              maxLength: 3,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 2, right: 2, top: 5, bottom: 10),
                          child: Text(
                            "X + ",
                            textAlign: TextAlign.left,
                            style: TextStyle(color: Colors.black, fontSize: 20.0),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 2, left: 2),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * .18,
                            child: TextField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  hintText: "c",
                                  labelText: "",
                                  labelStyle: TextStyle(color: Colors.black87)),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black, fontSize: 21.0),
                              controller: modelEquacao2.val3,
                              maxLength: 3,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 2, right: 10, top: 5, bottom: 10),
                          child: Text(
                            " = 0",
                            textAlign: TextAlign.left,
                            style: TextStyle(color: Colors.black, fontSize: 20.0),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(
                              top: 20.0, bottom: 5.0, right: 5.0),
                          child: Container(
                            height: MediaQuery.of(context).size.height * .07,
                            width: MediaQuery.of(context).size.width * .35,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.lightBlueAccent,
                                  onPrimary: Colors.white,
                                ),
                              onPressed: () {
                                setState(() {
                                  modelEquacao2.verificarCampo();
                                });
                              },
                              child: Text(
                                "Calcular",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 22.0),
                              ),
                              /* color: Colors.blueAccent, */
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 20.0, bottom: 5.0, left: 5.0),
                          child: Container(
                            height: MediaQuery.of(context).size.height * .07,
                            width: MediaQuery.of(context).size.width * .35,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.lightBlueAccent,
                                  onPrimary: Colors.white,
                                ),
                              onPressed: () {
                                setState(() {
                                  modelEquacao2.resetCampos();
                                });
                              },
                              child: Text(
                                "Limpar",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 22.0),
                              ),
                              /* color: Colors.lightBlueAccent, */
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 10, right: 10, top: 20, bottom: 5),
                      child: Text(
                        modelEquacao2.resultEq2,
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.black, fontSize: 21.0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 10, right: 10, top: 5, bottom: 5),
                      child: Text(
                        modelEquacao2.resultEq2_1,
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.black, fontSize: 21.0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 10, right: 10, top: 5, bottom: 5),
                      child: Text(
                        modelEquacao2.resultEq2_2,
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.black, fontSize: 21.0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 10, right: 10, top: 5, bottom: 5),
                      child: Text(
                        modelEquacao2.resultEq2_3,
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.black, fontSize: 21.0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 10, right: 10, top: 5, bottom: 5),
                      child: Text(
                        modelEquacao2.resultEq2_4,
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.black, fontSize: 21.0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            bottomNavigationBar: BannerAdMob(),
          ),
        )
    );
  }
}
