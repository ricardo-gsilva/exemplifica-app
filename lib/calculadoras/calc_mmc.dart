import 'package:exemplifica_git/ad_mob/ad_mob.dart';
import 'package:exemplifica_git/ad_mob/banner_ad_mob.dart';
import 'package:exemplifica_git/components/drawer_comp/drawer_page.dart';
import 'package:exemplifica_git/model_calc/model_mmc.dart';
import 'package:flutter/material.dart';

class CalcMmc extends StatefulWidget {
  @override
  _CalcMmcState createState() => _CalcMmcState();
}

class _CalcMmcState extends State<CalcMmc> {

  final AdMob adMob = AdMob();

  final ModelMmc modelMmc = ModelMmc();

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
              body: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(
                              left: 0.0, top: 5.0, right: 0.0, bottom: 5.0),
                          child: Image.asset("images/calculadoras/calc_mmc.png"),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            "Digite 2 n??meros para efetuar o c??lculo do MMC!",
                            style: TextStyle(fontSize: 20.0),
                          ),
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
                                  controller: modelMmc.val1,
                                  maxLength: 5,
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
                                      hintText: "Valor 2",
                                      labelText: "",
                                      labelStyle: TextStyle(color: Colors.black87)),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.black, fontSize: 23.0),
                                  controller: modelMmc.val2,
                                  maxLength: 5,
                                ),
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
                                      modelMmc.verificarCampos();
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
                                      modelMmc.resetCampos();
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
                            modelMmc.resultMmc,
                            textAlign: TextAlign.left,
                            style: TextStyle(color: Colors.black, fontSize: 21.0),
                          ),
                        ),
                        Padding(                          
                          padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 10),
                          child: Text(
                            modelMmc.resultMmc1,
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
