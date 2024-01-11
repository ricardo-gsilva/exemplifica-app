import 'package:exemplifica_git/ad_mob/ad_mob.dart';
import 'package:exemplifica_git/ad_mob/banner_ad_mob.dart';
import 'package:exemplifica_git/components/drawer_comp/drawer_page.dart';
import 'package:exemplifica_git/controller/model_funcoes.dart';
import 'package:flutter/material.dart';

class CalcFuncoes extends StatefulWidget {
  @override
  _CalcFuncoesState createState() => _CalcFuncoesState();
}

class _CalcFuncoesState extends State<CalcFuncoes> {

  // final AdMob adMob = AdMob();

  final ModelFuncoes modelFuncoes = ModelFuncoes();


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/backapp.png"),
                    fit: BoxFit.cover)),
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
                                    left: 0.0, top: 15.0, right: 0.0, bottom: 5.0),
                                child: Image.asset(
                                    "images/calculadoras/calc_funcoes.png"),
                              ),
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Text(
                                  "Digite os valores para preencher a função.",
                                  style: TextStyle(fontSize: 25.0, color: Colors.red),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Text(
                                  "f(x) = ax + b",
                                  style: TextStyle(fontSize: 30.0, color: Colors.red, fontWeight: FontWeight.bold),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 20.0, bottom: 5.0, right: 5.0, left: 5),
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
                                            modelFuncoes.verificarCampos();
                                          });
                                        },
                                        child: Text(
                                          "Calcular",
                                          style: TextStyle(
                                              color: Colors.white, fontSize: 22.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 20.0, bottom: 5.0, right: 5.0, left: 5),
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
                                           modelFuncoes.resetCampos();
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
                              Column(
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(left: 12, top: 30),
                                        child: Text(
                                          "a:",
                                          style: TextStyle(
                                              fontSize: 25.0,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(right: 0, left: 10),
                                        child: SizedBox(
                                          width: MediaQuery.of(context).size.width * .3,
                                          child: TextField(
                                            keyboardType: TextInputType.number,
                                            decoration: InputDecoration(
                                                hintText: "a",
                                                labelText: "",
                                                labelStyle: TextStyle(color: Colors.black87)),
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.black, fontSize: 23.0),
                                            controller: modelFuncoes.a,
                                            maxLength: 9,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(left: 12, top: 30),
                                        child: Text(
                                          "b:",
                                          style: TextStyle(
                                              fontSize: 25.0,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(right: 0, left: 10),
                                        child: SizedBox(
                                          width: MediaQuery.of(context).size.width * .3,
                                          child: TextField(
                                            keyboardType: TextInputType.number,
                                            decoration: InputDecoration(
                                                hintText: "b",
                                                labelText: "",
                                                labelStyle: TextStyle(color: Colors.black87)),
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.black, fontSize: 23.0),
                                            controller: modelFuncoes.b,
                                            maxLength: 9,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(left: 12, top: 30),
                                        child: Text(
                                          "Resultado:",
                                          style: TextStyle(
                                              fontSize: 25.0,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(right: 0, left: 10),
                                        child: SizedBox(
                                          width: MediaQuery.of(context).size.width * .3,
                                          child: TextField(
                                            keyboardType: TextInputType.number,
                                            decoration: InputDecoration(
                                                hintText: "Tempo",
                                                labelText: "",
                                                labelStyle: TextStyle(color: Colors.black87)),
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.black, fontSize: 23.0),
                                            controller: modelFuncoes.r,
                                            maxLength: 9,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),

                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 10, right: 10, bottom: 3, top: 30),
                                    child: Text(
                                      modelFuncoes.resultF,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(color: Colors.black, fontSize: 25.0),
                                    ),
                                  ),
                                ],
                              ),

/* -------------------------------------------JurosCompostos-----------------------------------------------*/

                              Padding(
                                padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 15),
                                child: Text(
                                  modelFuncoes.resultF_1,
                                  style: TextStyle(
                                      fontSize: 22.0,
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ])
                    )
                ),
                // bottomNavigationBar: BannerAdMob(),
            )
        )
    );
  }
}
