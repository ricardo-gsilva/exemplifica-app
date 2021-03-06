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
                      "Tabuada ?? praticamente uma tortura para muitos. Mas n??o ?? algo complicado de se"
                      " entender! Iremos usar como exemplo as tabuadas do 1 e do 2, para mostrar como"
                      " funciona o processo. Assim todos poder??o ter uma no????o bem r??pida de como resolver"
                      " tabuadas de forma simples e sem dor de cabe??a.",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Em uma tabuada o primeiro n??mero representa o n??mero referente aquela tabuada. Por"
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
                      "O primeiro 1 ?? referente a tabuada do 1 e o segundo 1 ?? referente ao n??mero de vezes"
                      " que ele ?? m??ltiplicado. Logo 1x1 = 1 j?? que o 1 multiplicado uma ??nica vez por ele"
                      " mesmo e s?? pode ter o resultado 1.",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Continuando com o pr??ximo exemplo, para fortalecer as informa????es que foram passadas.",
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
                      "O 1 ?? multiplicado 2x nessa situa????o, seria o mesmo que 1 + 1. Conseguem entender essa"
                      " liga????o com a soma? A opera????o 1 x 2 ?? o mesmo que 1 + 1, ou seja, o n??mero de"
                      " multiplica????es nada mais ?? do que o n??mero de vezes que aquele n??mero ?? somado por"
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
                      "Percebem que o n??mero de vezes que o n??mero est?? sendo somado ?? o mesmo n??mero de"
                      " vezes na m??ltiplica????o? ?? simples! A tabuada funciona dessa forma, se voc?? tem"
                      " dificuldade para fazer multiplica????es, tente usar a soma como um aux??lio. Dessa"
                      " forma e com um pouco de pr??tica, voc?? mentalmente conseguir?? fazer a tabuada sem que"
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