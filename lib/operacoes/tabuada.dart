import 'package:exemplifica_git/calculadoras/calc_tabuada.dart';
import 'package:exemplifica_git/components/drawer_comp/drawer_page.dart';
import 'package:exemplifica_git/person_icons.dart';
import 'package:flutter/material.dart';

class Tabuada extends StatefulWidget {
  @override
  _TabuadaState createState() => _TabuadaState();
}

class _TabuadaState extends State<Tabuada> {

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
                IconButton(
                  icon: Icon(Person.calc),
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context)
                              => CalcTabuada()
                        ));
                  },
                )
              ],
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
                      child: Image.asset("images/operacoes/tabuada/tabuada_1.png"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Tabuada é praticamente uma tortura para muitos. Mas não é algo complicado de se"
                      " entender! Iremos usar como exemplo as tabuadas do 1 e do 2, para mostrar como"
                      " funciona o processo. Assim todos poderão ter uma noção bem rápida de como resolver"
                      " tabuadas de forma simples e sem dor de cabeça.",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Em uma tabuada o primeiro número representa o número referente aquela tabuada. Por"
                      " exemplo:",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.2,
                        child: Image.asset("images/operacoes/tabuada/tabuada_2.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "O primeiro 1 é referente a tabuada do 1 e o segundo 1 é referente ao número de vezes"
                      " que ele é múltiplicado. Logo 1x1 = 1 já que o 1 multiplicado uma única vez por ele"
                      " mesmo e só pode ter o resultado 1.",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Continuando com o próximo exemplo, para fortalecer as informações que foram passadas.",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.35,
                        child: Image.asset("images/operacoes/tabuada/tabuada_3.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "O 1 é multiplicado 2x nessa situação, seria o mesmo que 1 + 1. Conseguem entender essa"
                      " ligação com a soma? A operação 1 x 2 é o mesmo que 1 + 1, ou seja, o número de"
                      " multiplicações nada mais é do que o número de vezes que aquele número é somado por"
                      " ele mesmo. Entenderam?",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.9,
                        child: Image.asset("images/operacoes/tabuada/tabuada_4.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 25),
                    child: Text(
                      "Percebem que o número de vezes que o número está sendo somado é o mesmo número de"
                      " vezes na múltiplicação? É simples! A tabuada funciona dessa forma, se você tem"
                      " dificuldade para fazer multiplicações, tente usar a soma como um auxílio. Dessa"
                      " forma e com um pouco de prática, você mentalmente conseguirá fazer a tabuada sem que"
                      " tenha dificuldades.",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
}