import 'package:exemplifica_git/ad_mob/ad_mob.dart';
import 'package:exemplifica_git/ad_mob/banner_ad_mob.dart';
import 'package:exemplifica_git/components/drawer_comp/drawer_page.dart';
import 'package:exemplifica_git/model_calc/model_regra_de_3.dart';
import 'package:flutter/material.dart';

class CalcRegraDe3 extends StatefulWidget {
  @override
  _CalcRegraDe3State createState() => _CalcRegraDe3State();
}

class _CalcRegraDe3State extends State<CalcRegraDe3> {

  // final AdMob adMob = AdMob();

  final ModelRegraDe3 modelRegraDe3 = ModelRegraDe3();

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
                    image: AssetImage("images/backapp.png"),
                    fit: BoxFit.cover)
            ),
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
              body: SingleChildScrollView(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                            left: 0.0, top: 5.0, right: 0.0, bottom: 5.0),
                        child: Image.asset("images/calculadoras/calc_regra3.png"),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          "Digite os valores nos campos abaixo para encontrar a proporcionalidade entre eles.",
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 10, top: 20, right: 10),
                            child: Text(
                              "Atributo 1",
                              style: TextStyle(fontSize: 23.0),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10, top: 20, right: 10),
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
                              width: MediaQuery.of(context).size.width *.27,
                              child: TextField(
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                    hintText: "Valor 1",
                                    labelText: "",
                                    labelStyle: TextStyle(color: Colors.black87)),
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.black, fontSize: 23.0),
                                controller: modelRegraDe3.val1,
                                maxLength: 10,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 15),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width *.27,
                              child: TextField(
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                    hintText: "Valor 3",
                                    labelText: "",
                                    labelStyle: TextStyle(color: Colors.black87)),
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.black, fontSize: 23.0),
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
                            padding: EdgeInsets.only(right: 35, left: 15),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width *.27,
                              child: TextField(
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                    hintText: "Valor 2",
                                    labelText: "",
                                    labelStyle: TextStyle(color: Colors.black87)),
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.black, fontSize: 23.0),
                                controller: modelRegraDe3.val2,
                                maxLength: 10,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20, right: 70, left: 25),
                            child: Text(
                              "X",
                              style: TextStyle(fontSize: 23.0),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 20.0, bottom: 5.0, right: 5.0),
                            child: Container(
                              height: MediaQuery.of(context).size.height *.07,
                              width: MediaQuery.of(context).size.width *.35,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.lightBlueAccent,
                                  onPrimary: Colors.white,
                                ),
                                onPressed: (){
                                  setState(() {
                                    modelRegraDe3.verificarCampos();
                                  });
                                },
                                child: Text(
                                  "Calcular",
                                  style: TextStyle(color: Colors.white, fontSize: 22.0),
                                ),
                                /* color: Colors.blueAccent, */
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20.0, bottom: 5.0, left: 5.0),
                            child: Container(
                              height: MediaQuery.of(context).size.height *.07,
                              width: MediaQuery.of(context).size.width *.35,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.lightBlueAccent,
                                  onPrimary: Colors.white,
                                ),
                                onPressed: (){
                                  setState(() {
                                    modelRegraDe3.resetCampos();
                                  });
                                },
                                child: Text(
                                  "Limpar",
                                  style: TextStyle(color: Colors.white, fontSize: 22.0),
                                ),
                                /* color: Colors.lightBlueAccent, */
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          modelRegraDe3.resultRegra3,
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.black, fontSize: 21.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // bottomNavigationBar: BannerAdMob(),
            )
        )
    );
  }
}
