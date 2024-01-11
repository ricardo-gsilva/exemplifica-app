import 'package:exemplifica_git/ad_mob/ad_mob.dart';
import 'package:exemplifica_git/ad_mob/banner_ad_mob.dart';
import 'package:exemplifica_git/components/drawer_comp/drawer_page.dart';
import 'package:exemplifica_git/controller/model_tabuada.dart';
import 'package:flutter/material.dart';

class CalcTabuada extends StatefulWidget {
  @override
  _CalcTabuadaState createState() => _CalcTabuadaState();
}

class _CalcTabuadaState extends State<CalcTabuada> {
  // final AdMob adMob = AdMob();

  final _modelTabuada = ModelTabuada();

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
              body: SingleChildScrollView(
                child: Container(
                  child: Column(children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                          left: 0.0, top: 5.0, right: 0.0, bottom: 5.0),
                      child:
                          Image.asset("images/calculadoras/calc_tabuada.png"),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        "Digite um número no campo abaixo que seja entre 0 e 50000 e use o botão de calcular para que você possa"
                        " ver a tabuada do número escolhido.",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Form(
                              key: _modelTabuada.formKey,
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * .5,
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                      labelText: "Digite Aqui",
                                      labelStyle:
                                          TextStyle(color: Colors.black87)),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 23.0),
                                  controller: _modelTabuada.nTabuada,
                                  maxLength: 5,
                                ),
                              ),
                            )),
                        Column(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(top: 10.0, bottom: 5.0),
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * .07,
                                width: MediaQuery.of(context).size.width * .35,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.lightBlueAccent,
                                    onPrimary: Colors.white,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _modelTabuada.verificarCampo();
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
                              padding: EdgeInsets.only(top: 10.0, bottom: 5.0),
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * .07,
                                width: MediaQuery.of(context).size.width * .35,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.lightBlueAccent,
                                    onPrimary: Colors.white,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _modelTabuada.resetCampos();
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
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        _modelTabuada.infoText,
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.black, fontSize: 25.0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        _modelTabuada.dica,
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.black, fontSize: 25.0),
                      ),
                    ),
                  ]),
                ),
              ),
              // bottomNavigationBar: BannerAdMob(),
            )
        )
    );
  }
}
