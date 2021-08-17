import 'package:exemplifica_git/calculadoras/calc_mdc.dart';
import 'package:exemplifica_git/components/drawer_comp/drawer_page.dart';
import 'package:exemplifica_git/person_icons.dart';
import 'package:flutter/material.dart';

class Mdc extends StatefulWidget {
  @override
  _MdcState createState() => _MdcState();
}

class _MdcState extends State<Mdc> {

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
                    IconButton(
                      icon: Icon(Person.calc),
                      onPressed: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context)
                                => CalcMdc()
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
                              child: Image.asset("images/operacoes/mdc/mdc_1.png"),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "A sigla MDC significa 'máximo divisor comum' que nada mais é do que o maior"
                              " número divisível entre dois ou mais números inteiros. Um número natural possui"
                              " divisores, o menor divisor de um número será sempre o número 1, enquanto que"
                              " o maior divisor será o próprio número.",
                              style: TextStyle(fontSize: 24.0),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              'Obs: É importante lembrar que nenhum número pode ser dividido por 0.',
                              style: TextStyle(fontSize: 24.0, color: Colors.red),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "Vamos ver alguns exemplos de como encontrar o MDC de alguns números. Os números"
                              " do exemplo serão 15 e 30:",
                              style: TextStyle(fontSize: 24.0),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width *.7,
                                child: Image.asset("images/operacoes/mdc/mdc_2.png"),
                              )
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "Como podemos ver o máximo divisor comum entre os números 15 e 30, é o próprio"
                              " número 15. Quando fatoramos para encontrar o MDC, diferente do MMC que pega"
                              " todos os números que foram encontrados na farotação e faz uma multiplicação"
                              " de todos eles, no MDC só iremos multiplicar os valores que podem dividir ambos"
                              " os números ao mesmo tempo. O 3 e o 5 podem dividir os dois valores. Mas o"
                              " número 2 só pode dividir um deles, por essa razão ele não entra na parte final"
                              " da multiplicação para encontrar o MDC. Depois de encontrar esses números"
                              " divisores, basta multiplicar e assim encontrará o maior divisor comum. Veja"
                              " outro exemplo com os números 12 e 18: ",
                              style: TextStyle(fontSize: 24.0),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width *.85,
                                child: Image.asset("images/operacoes/mdc/mdc_3.png"),
                              )
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(10, 10, 10, 25),
                            child: Text(
                              "Nesse exemplo o nosso MDC é o número 6, o número 2 da primeira linha que divide"
                              " 12 e 18 e o número 3 que divide o 3 e o 9 são os divisores comuns. Tendo os"
                              " dois números, nós os multiplicamos e temos o número 6 que é o máximo divisor"
                              " comum entre o número 12 e 18. Simples não é mesmo?",
                              style: TextStyle(fontSize: 24.0),
                            ),
                          ),
                        ]
                    )
                )
            )
        )
    );
  }
}