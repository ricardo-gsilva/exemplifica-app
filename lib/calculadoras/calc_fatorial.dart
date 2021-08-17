import 'package:exemplifica_git/ad_mob/ad_mob.dart';
import 'package:exemplifica_git/ad_mob/banner_ad_mob.dart';
import 'package:exemplifica_git/components/drawer_comp/drawer_page.dart';
import 'package:exemplifica_git/model_calc/model_fatorial.dart';
import 'package:flutter/material.dart';

class CalcFatorial extends StatefulWidget {
  @override
  _CalcFatorialState createState() => _CalcFatorialState();
}

class _CalcFatorialState extends State<CalcFatorial> {

  final AdMob adMob = AdMob();

  final ModelFatorial modelFatorial = ModelFatorial();

  @override
  Widget build(BuildContext context) {
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
                      child: Image.asset("images/calculadoras/calc_fatorial.png"),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        "Digite um número para ver o cálculo do fatorial.",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(
                              left: 10, right: 10, top: 5, bottom: 10),
                          child: Text(
                            "Digite o valor:",
                            textAlign: TextAlign.left,
                            style: TextStyle(color: Colors.black, fontSize: 21.0),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 15, left: 15),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * .27,
                            child: TextField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  hintText: "Valor 1",
                                  labelText: "",
                                  labelStyle: TextStyle(color: Colors.black87)),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black, fontSize: 23.0),
                              controller: modelFatorial.val1,
                              maxLength: 2,
                            ),
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
                                  modelFatorial.verificarCampos();
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
                                  modelFatorial.resetCampos();
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
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        modelFatorial.resultFat,
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.black, fontSize: 21.0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 10, right: 10, top: 5, bottom: 10),
                      child: Text(
                        modelFatorial.resultFat1,
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
