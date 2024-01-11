import 'package:exemplifica_git/ad_mob/ad_mob.dart';
import 'package:exemplifica_git/ad_mob/banner_ad_mob.dart';
import 'package:exemplifica_git/components/drawer_comp/drawer_page.dart';
import 'package:exemplifica_git/controller/model_juros_compostos.dart';
import 'package:flutter/material.dart';

class CalcJurosC extends StatefulWidget {
  @override
  _CalcJurosCState createState() => _CalcJurosCState();
}

class _CalcJurosCState extends State<CalcJurosC> {

  // final AdMob adMob = AdMob();

  final ModelJurosCompostos modelJurosCompostos = ModelJurosCompostos();

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
                                    "images/calculadoras/calc_jurosCompostos.png"),
                              ),
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Text(
                                  "Digite os valores de Capital, taxa mensal de juros e tempo em meses.",
                                  style: TextStyle(fontSize: 25.0, color: Colors.red),
                                ),
                              ),
                              Container(
                                height: 55,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text("M = C(1 + i)",
                                      style: TextStyle(fontSize: 30.0, color: Colors.red, fontWeight: FontWeight.bold),),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(" t",
                                        style: TextStyle(fontSize: 25.0, color: Colors.red, fontWeight: FontWeight.bold)),
                                    )
                                  ],
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
                                            modelJurosCompostos.verificarCampos();
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
                                            modelJurosCompostos.resetCampos();
                                          });
                                        },
                                        child: Text(
                                          "Limpar",
                                          style: TextStyle(
                                              color: Colors.white, fontSize: 22.0),
                                        ),
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
                                          "Capital:",
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
                                                hintText: "capital(R\$)",
                                                labelText: "",
                                                labelStyle: TextStyle(color: Colors.black87)),
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.black, fontSize: 23.0),
                                            controller: modelJurosCompostos.c,
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
                                          "Taxa:",
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
                                                hintText: "% a.m",
                                                labelText: "",
                                                labelStyle: TextStyle(color: Colors.black87)),
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.black, fontSize: 23.0),
                                            controller: modelJurosCompostos.i,
                                            maxLength: 4,
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
                                          "Meses:",
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
                                            controller: modelJurosCompostos.t,
                                            maxLength: 3,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),

                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 10, right: 10, bottom: 3, top: 30),
                                    child: Text(
                                      modelJurosCompostos.resultjC,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(color: Colors.black, fontSize: 21.0),
                                    ),
                                  ),
                                ],
                              ),

/* -------------------------------------------JurosCompostos-----------------------------------------------*/

                              Padding(
                                padding: EdgeInsets.only(left: 10, right: 10, top: 5),
                                child: Text(
                                  modelJurosCompostos.resultjC_1,
                                  style: TextStyle(
                                      fontSize: 35.0,
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
