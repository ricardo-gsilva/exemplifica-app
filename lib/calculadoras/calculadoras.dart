import 'package:exemplifica_git/ad_mob/ad_mob.dart';
import 'package:exemplifica_git/calculadoras/calc_equacao_1.dart';
import 'package:exemplifica_git/calculadoras/calc_equacao_2.dart';
import 'package:exemplifica_git/calculadoras/calc_fatorial.dart';
import 'package:exemplifica_git/calculadoras/calc_funcoes.dart';
import 'package:exemplifica_git/calculadoras/calc_juros_compostos.dart';
import 'package:exemplifica_git/calculadoras/calc_juros_simples.dart';
import 'package:exemplifica_git/calculadoras/calc_mdc.dart';
import 'package:exemplifica_git/calculadoras/calc_mmc.dart';
import 'package:exemplifica_git/calculadoras/calc_porcentagem.dart';
import 'package:exemplifica_git/calculadoras/calc_regra_de_3.dart';
import 'package:exemplifica_git/calculadoras/calc_tabuada.dart';
import 'package:exemplifica_git/components/drawer_comp/drawer_page.dart';
import 'package:exemplifica_git/ui/operacoes.dart';
import 'package:flutter/material.dart';

class Calculadoras extends StatefulWidget {
  @override
  _CalculadorasState createState() => _CalculadorasState();
}

class _CalculadorasState extends State<Calculadoras> {

  // final AdMob adMob = AdMob();

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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Operacoes()));
                  },
                ),
              ]
          ),
          drawer: DrawerPage(),
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                    left: 0.0, top: 5.0, right: 0.0, bottom: 5.0),
                child: Image.asset("images/calculadoras_1.png"),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Escolha uma das calculadoras para que você possa resolver suas questões matemáticas.",
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 3),
                child: Container(
                  width: MediaQuery.of(context).size.width *.8,
                  height: 40,
                  child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.blue.shade700, // background
                                  onPrimary: Colors.white, // foreground
                      ),
                    onPressed: (){
                      // adMob.showInstersticial();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context)
                              => CalcEquacao1()
                          ));
                    },
                    child: Text(
                      "Equação de 1º grau",
                      style: TextStyle(color: Colors.white, fontSize: 22.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 0.5, bottom: 3),
                child: Container(
                  width: MediaQuery.of(context).size.width *.8,
                  height: 40,
                  child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.blue.shade600, // background
                                  onPrimary: Colors.white,
                                ),
                    onPressed: (){
                      // adMob.showInstersticial();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context)
                              => CalcEquacao2()
                          ));
                    },
                    child: Text(
                      "Equação de 2º grau",
                      style: TextStyle(color: Colors.white, fontSize: 22.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 0.5, bottom: 3),
                child: Container(
                  width: MediaQuery.of(context).size.width *.8,
                  height: 40,
                  child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.blue.shade400, // background
                                  onPrimary: Colors.white, // foreground
                                ),
                    onPressed: (){
                      // adMob.showInstersticial();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context)
                              => CalcFatorial()
                          ));
                    },
                    child: Text(
                      "Fatorial",
                      style: TextStyle(color: Colors.white, fontSize: 22.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 0.5, bottom: 3),
                child: Container(
                  width: MediaQuery.of(context).size.width *.8,
                  height: 40,
                  child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.blue.shade300, // background
                                  onPrimary: Colors.white, // foreground
                                ),
                    onPressed: (){
                      // adMob.showInstersticial();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context)
                              => CalcFuncoes()
                          ));
                    },
                    child: Text(
                      "Funções",
                      style: TextStyle(color: Colors.white, fontSize: 22.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 0.5, bottom: 3),
                child: Container(
                  width: MediaQuery.of(context).size.width *.8,
                  height: 40,
                  child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.blue.shade300, // background
                                  onPrimary: Colors.white, // foreground
                                ),
                    onPressed: (){
                      // adMob.showInstersticial();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context)
                              => CalcJurosC()
                          ));
                    },
                    child: Text(
                      "Juros Compostos",
                      style: TextStyle(color: Colors.white, fontSize: 22.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 0.5, bottom: 3),
                child: Container(
                  width: MediaQuery.of(context).size.width *.8,
                  height: 40,
                  child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.blue.shade200, // background
                                  onPrimary: Colors.white, // foreground
                                ),
                    onPressed: (){
                      // adMob.showInstersticial();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context)
                              => CalcJurosS()
                          ));
                    },
                    child: Text(
                      "Juros Simples",
                      style: TextStyle(color: Colors.white, fontSize: 22.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 0.5, bottom: 3),
                child: Container(
                  width: MediaQuery.of(context).size.width *.8,
                  height: 40,
                  child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.blue.shade300, // background
                                  onPrimary: Colors.white, // foreground
                                ),
                    onPressed: (){
                      // adMob.showInstersticial();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context)
                              => CalcMdc()
                          ));
                    },
                    child: Text(
                      "M.D.C",
                      style: TextStyle(color: Colors.white, fontSize: 22.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 0.5, bottom: 3),
                child: Container(
                  width: MediaQuery.of(context).size.width *.8,
                  height: 40,
                  child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.blue.shade400, // background
                                  onPrimary: Colors.white, // foreground
                                ),
                    onPressed: (){
                      // adMob.showInstersticial();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context)
                              => CalcMmc()
                          ));
                    },
                    child: Text(
                      "M.M.C",
                      style: TextStyle(color: Colors.white, fontSize: 22.0),
                    ),
                  ),
                ),
              ),Padding(
                padding: EdgeInsets.only(top: 0.5, bottom: 3),
                child: Container(
                  width: MediaQuery.of(context).size.width *.8,
                  height: 40,
                  child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.blue.shade500, // background
                                  onPrimary: Colors.white, // foreground
                                ),
                    onPressed: (){
                      // adMob.showInstersticial();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context)
                              => CalcPorcentagem()
                          ));
                    },
                    child: Text(
                      "Porcentagem",
                      style: TextStyle(color: Colors.white, fontSize: 22.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 0.5, bottom: 3),
                child: Container(
                  width: MediaQuery.of(context).size.width *.8,
                  height: 40,
                  child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.blue.shade600, // background
                                  onPrimary: Colors.white, // foreground
                                ),
                    onPressed: () {
                      // adMob.showInstersticial();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context)
                              => CalcRegraDe3()
                              ));
                    },
                    child: Text(
                      "Regra de 3",
                      style: TextStyle(color: Colors.white, fontSize: 22.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 0.5, bottom: 15.5),
                child: Container(
                  width: MediaQuery.of(context).size.width *.8,
                  height: 40,
                  child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.blue.shade700, // background
                                  onPrimary: Colors.white, // foreground
                                ),
                    onPressed: () {
                      // adMob.showInstersticial();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context)
                              => CalcTabuada()
                          )
                      );
                    },
                    child: Text(
                      "Tabuada",
                      style: TextStyle(color: Colors.white, fontSize: 22.0, ),
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

class CalcEquacao1D {
}
