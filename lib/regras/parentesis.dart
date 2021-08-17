import 'package:exemplifica_git/components/drawer_comp/drawer_page.dart';
import 'package:flutter/material.dart';

class Parentesis extends StatefulWidget {
  @override
  _ParentesisState createState() => _ParentesisState();
}

class _ParentesisState extends State<Parentesis> {
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
                      child: Image.asset("images/parentesis/parentesis_.png"),
                      )
                    ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                        "Compreender essa regra é extremamente importante, pois ela pode ajudar a resolver"
                        " contas muito simples que erramos apenas por não utilizar os parêntesis. Abaixo"
                        " mostraremos um exemplo de como resolver uma equação matemática com parêntesis.",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.6,
                        child: Image.asset("images/parentesis/parentesis_1.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                        "Primeiramente devemos resolver a operação dentro dos parêntesis para então dar continuidade a"
                            " resolução da questão. Devemos nos atentar ao sinal negativo antes do parêntesis, isso significa"
                            " que existe uma multiplicação. Sempre que existir uma operação matemática com um sinal de"
                            " positivo ou negativo antes dos parêntesis, significa que esse sinal está multiplicando o"
                            " valor que se encontra dentro dos parêntesis. Para simplificar, caso não tenha entendido, insira"
                            " o número 1 antes do parêntesis junto do sinal de multiplicação, deixando dessa"
                            " forma -1 x ( 8 + 2 - 3). Fazendo isso, terá apenas que multiplicar o resultado que irá obter"
                            " dentro dos parêntesis ao -1, seguindo a regra básica de sinais que é sinal igual é positivo e"
                            " sinais diferentes é negativo.",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.7,
                        child: Image.asset("images/parentesis/parentesis_2.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Voltando a regra dos parêntesis, o resultado ficaria:",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.4,
                        child: Image.asset("images/parentesis/parentesis_3.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Assim podemos dar continuidade a resolução.",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.6,
                        child: Image.asset("images/parentesis/parentesis_4.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Reescrevendo a operação com as informações que foram passadas teremos:",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.6,
                        child: Image.asset("images/parentesis/parentesis_5.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "E assim podemos resolver toda a questão da seguinte forma:",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.4,
                        child: Image.asset("images/parentesis/parentesis_6.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Pode-se notar que o parêntesis é mantido até que se chegue ao resultado final."
                      " O resultado encontrado é o 7 e só após chegar ao resultado da multiplicação do"
                      " valor encontrado pelo sinal que se encontra antes dos parêntesis que poderemos"
                      " retirar o parêntesis de toda a equação. Após retirarmos os parêntesis, poderemos"
                      " encontrar o resultado de toda a equação.",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 40),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.4,
                        child: Image.asset("images/parentesis/parentesis_7.png"),
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