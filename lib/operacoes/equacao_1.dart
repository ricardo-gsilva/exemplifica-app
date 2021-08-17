import 'package:exemplifica_git/calculadoras/calc_equacao_1.dart';
import 'package:exemplifica_git/components/drawer_comp/drawer_page.dart';
import 'package:exemplifica_git/person_icons.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Equacao_1 extends StatefulWidget {
  @override
  _Equacao_1State createState() => _Equacao_1State();
}

// ignore: camel_case_types
class _Equacao_1State extends State<Equacao_1> {
  
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
                            builder: (context) => CalcEquacao1()
                        )
                    );
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
                      child: Image.asset("images/operacoes/equacao_1/equacao1_1.png"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "A equação de 1º grau é uma sentenção matemática que estabelece igualdade entre"
                      " elementos reais e desconhecidos. É descrito pela fórmula:",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.6,
                        child: Image.asset("images/operacoes/equacao_1/equacao1_2.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Os valores 'a' e 'b' são os números reais e o 'x' representa o valor desconhecido,"
                      " sendo que 'a' será sempre um valor diferente de 0. O objetivo nessa equação é"
                      " encontrar o valor de 'x', ou seja, encontrar o valor desconhecido. Vamos ao exemplo:",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.5,
                        child: Image.asset("images/operacoes/equacao_1/equacao1_3.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Nessa equação iremos mudar a posição do - 2, passando ele para o outro lado do '='."
                      " Ficamos dessa forma:",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.5,
                        child: Image.asset("images/operacoes/equacao_1/equacao1_4.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Lembrando que após mudar a posição de um valor para o outro lado do '=', o sinal dele"
                      " se altera, passando de positivo para negativo ou negativo para positivo. Seguimos"
                      " com a resolução isolando o x para que possamos encontrar seu valor, como no exemplo"
                      " abaixo:",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.4,
                        child: Image.asset("images/operacoes/equacao_1/equacao1_5.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Outro ponto a se fixar na mente é de que se um número estiver dividindo e você alterar"
                      " o lado dele, passando para o outro lado do '=', ele mudará a sua operação. Se estava"
                      " dividindo ele passa a multiplicar e se estava multiplicando ele passa a dividir."
                      " Lembra da troca de sinais mencionada pouco acima? É o mesmo processo! Seguimos assim:",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.4,
                        child: Image.asset("images/operacoes/equacao_1/equacao1_6.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Agora que encontramos o valor de 'x', podemos colocá-lo no lugar de 'x' na equação"
                      " inicial para conferir se o valor está correto. Normalmente você não irá precisar"
                      " fazer isso, mas nesse momento faremos para mostrar que a resolução da equação"
                      " funcionou de forma correta.",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.6,
                        child: Image.asset("images/operacoes/equacao_1/equacao1_7.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 25),
                    child: Text(
                      "Como podemos ver o valor de 'x' está correto. Lembrando que quando um número se"
                      " encontra junto do valor 'x', ele está automaticamente multiplicando. Você poderá"
                      " ver letras ao lado de número, sendo representadas da mesma forma, normalmente"
                      " será um 'y' ou 'z'.",
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