import 'package:exemplifica_git/components/drawer_comp/drawer_page.dart';
import 'package:flutter/material.dart';

class Expoentes extends StatefulWidget {
  @override
  _ExpoentesState createState() => _ExpoentesState();
}

class _ExpoentesState extends State<Expoentes> {
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
                      child: Image.asset("images/expoentes/expoentes_1.png"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Os expoentes podem ser um pouco mais complicados de se resolver. Mas ainda assim com"
                      " um pouco de prática é possível passar por isso com tranquilidade! Primeiro vou"
                      " explicar como funcionam os expoentes. Para resolver uma expressão com expoente,"
                      " primeiro é necessário identificar aonde se encontra o expoente, nessa expressão"
                      " 2³ o expoente é o número 3. O número 3 significa que o número 2 está sendo"
                      " multiplicado 3 vezes por ele mesmo, ou seja, uma expressão 2³ é igual a 2x2x2."
                      " Perceba que o número 2 é multiplicado três vezes por ele mesmo. Agora que já"
                      " entendemos vamos tentar aplicar a nossa explicação.",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.9,
                        child: Image.asset("images/expoentes/expoentes_2.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Seguindo a regra anterior, primeiro precisamos resolver o conteúdo dentro dos parêntesis.",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.25,
                        child: Image.asset("images/expoentes/expoentes_3.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Agora que temos o resultado dentro dos parêntesis, podemos seguir com a resolução do expoente.",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.20,
                        child: Image.asset("images/expoentes/expoentes_4.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Como explicado antes, o expoente é o número de vezes que o número da base será multiplicado por"
                          " ele mesmo. Então a expressão 3² é igual a 3x3 e o resultado da expressão é 9.",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 40),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.20,
                        child: Image.asset("images/expoentes/expoentes_5.png"),
                      )
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
}