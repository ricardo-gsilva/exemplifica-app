import 'package:exemplifica_git/ad_mob/ad_mob.dart';
import 'package:exemplifica_git/ui/components/button_home.dart';
import 'package:exemplifica_git/ui/operacoes.dart';
import 'package:exemplifica_git/ui/regras_basicas.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  // final AdMob adMob = AdMob();

  // void showInstersticial(){  
  //   click++;
  //     if (click > 1) {  
  //     instShare = pageCalc()
  //        ..load()
  //        ..show();
  //        click = 0;
  //   }
  // }

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
              fit: BoxFit.cover)
          ),
      child: Scaffold(
              backgroundColor: Colors.transparent,
              body: SingleChildScrollView(
                  child: Container(                    
                    child: Column(                      
                      children: <Widget>[
                        Padding(                          
                          padding: EdgeInsets.only(
                              left: 0.0, top: 45.0, right: 0.0, bottom: 5.0),
                          child: Image.asset("images/bem_vindo.png"),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            "O EXEMPLIFICA não foi criado por um professor. Foi criado por uma pessoa comum que percebeu através"
                                " do contato com diversas pessoas, a dificuldade de entendimento que a maioria das pessoas tem com"
                                " relação a matemática. Pensando nisso o EXEMPLIFICA foi desenvolvido, tendo como objetivo transmitir o"
                                " conhecimento básico sobre matemática de forma simples e direta. O conteúdo foi trabalhado para ser detalhado"
                                " como um passo a passo, para que você usuário possa entender com facilidade como resolver as questões"
                                " matemáticas que encontrar.",
                            style: TextStyle(fontSize: 19.0),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            'Você pode começar conhecendo as regras básicas de matemática clicando no botão "regras". Mas se preferir,'
                                ' pode se aprofundar mais no assunto clicando no botão "operações".',
                            style: TextStyle(fontSize: 19.0),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[                                
                                ButtonHome(
                                  title: "Regras",
                                  page: RegrasBasicas(),
                                ),
                                ButtonHome(
                                  title: "Operações",
                                  page: Operacoes(),
                                ),                                
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
              )
          )
      ),
    );
  }
}

