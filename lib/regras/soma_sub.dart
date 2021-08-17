import 'package:exemplifica_git/components/drawer_comp/drawer_page.dart';
import 'package:flutter/material.dart';

class SomaSubtracao extends StatefulWidget {
  @override
  _SomaSubtracaoState createState() => _SomaSubtracaoState();
}

class _SomaSubtracaoState extends State<SomaSubtracao> {
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
                            width: MediaQuery.of(context).size.width,
                            child: Image.asset("images/soma_sub/soma_sub_1.png"),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 40),
                          child: Text(
                            "Chegamos a última regra básica. Em qualquer operação matemática, somas e"
                            " subtrações isoladas devem ser resolvidas por último, só terão prioridade"
                            " antes de multiplicações ou divisões, caso a soma ou a subtração estejam"
                            " dentro de parêntesis. Outro ponto a se destacar é que para se facilitar"
                            " a resolução de uma expressão matemática, a soma tem prioridade para ser"
                            " resolvida antes de uma subtração.",
                            style: TextStyle(fontSize: 24.0),
                          ),
                        ),
                      ],
                    )
                )
            )
        )
    );
  }
}