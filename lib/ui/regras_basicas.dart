import 'package:exemplifica_git/ad_mob/ad_mob.dart';
import 'package:exemplifica_git/components/drawer_comp/drawer_page.dart';
import 'package:exemplifica_git/regras/expoentes.dart';
import 'package:exemplifica_git/regras/mult_div.dart';
import 'package:exemplifica_git/regras/parentesis.dart';
import 'package:exemplifica_git/regras/regras_sinal.dart';
import 'package:exemplifica_git/regras/soma_sub.dart';
import 'package:exemplifica_git/ui/components/button_base.dart';
import 'package:exemplifica_git/ui/home_page.dart';
import 'package:flutter/material.dart';

class RegrasBasicas extends StatefulWidget {
  @override
  _RegrasBasicasState createState() => _RegrasBasicasState();
}

class _RegrasBasicasState extends State<RegrasBasicas> {

  final AdMob adMob = AdMob();
 
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
                            builder: (context) => HomePage()));
                  },
                ),
              ]
          ),
          drawer: DrawerPage(),
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width *.8,
                    child: Image.asset("images/regras_basicas_2.png"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text("Para ter bons resultados em matemática, é necessário compreender as regras"
                  " básicas para a resolução dos problemas. Abaixo estão listadas algumas dessas regras,"
                  " clique em uma delas para conhecer.",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),                
                ButtonBase(
                  title: "1º Parêntesis",
                  page: Parentesis(),
                  primaryColor: Colors.blue.shade600,
                ),
                ButtonBase(
                  title: "2º Expoentes",
                  page: Expoentes(),
                  primaryColor: Colors.blue.shade400,
                ),
                ButtonBase(
                  title: "3º Multiplicações e Divisões",
                  page: MultiplicaDiv(),
                  primaryColor: Colors.blue.shade200,
                ),
                ButtonBase(
                  title: "4º Somas e Subtrações",
                  page: SomaSubtracao(),
                  primaryColor: Colors.blue.shade400,
                ),
                ButtonBase(
                  title: "Regras de Sinais",
                  page: RegrasSinais(),
                  primaryColor: Colors.blue.shade600,
                )                
              ],
            ),
          ),
        ),
      ),      
    );
  }
}