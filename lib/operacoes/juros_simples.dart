import 'package:exemplifica_git/calculadoras/calc_juros_simples.dart';
import 'package:exemplifica_git/components/drawer_comp/drawer_page.dart';
import 'package:exemplifica_git/person_icons.dart';
import 'package:flutter/material.dart';

class JurosSimples extends StatefulWidget {
  @override
  _JurosSimplesState createState() => _JurosSimplesState();
}

class _JurosSimplesState extends State<JurosSimples> {

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
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CalcJurosS()
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
                              width: MediaQuery.of(context).size.width *.90,
                              child: Image.asset(
                                  "images/operacoes/juros_simples/jurosSimples_1.png"),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "Juros é o valor a ser pago ao atraso no pagamento de uma aplicação financeira"
                              " ou quantia a ser paga pelo empréstimo de um valor capital. O conceito de"
                              " juros pode ser definido de forma simples como rendimento de uma"
                              " aplicação financeira!",
                              style: TextStyle(fontSize: 24.0),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "O regime de Juros Compostos é o mais utilizado atualmente pelo sistema"
                              " financeiro, por ser mais lucrativo as aplicações. Os Juros Simples hoje"
                              " não são utilizados para capitalização! Mas antes era normalmente usado"
                              " em situações de curto prazo.",
                              style: TextStyle(fontSize: 24.0),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Vamos entender como funciona o Juros Simples. Os Juros Simples são"
                                  " calculados se baseando no valor de dívida ou valor aplicado, assim o"
                                  " valor dos juros é igual no período de aplicação ou composição de"
                                  " toda a dívida.",
                                  style: TextStyle(fontSize: 24.0),
                                ),
                              )
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "A fórmula utilizada para o cálculo de Juros Simples é:",
                              style: TextStyle(fontSize: 24.0),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width *.5,
                              child: Image.asset(
                                  "images/operacoes/juros_simples/jurosSimples_2.png"),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "Onde as siglas significam:\n\n"
                               "J = juros\n"
                               "C = capital\n"
                                "i = taxa de juros\n"
                                "t = tempo de aplicação\n"
                                "(que pode ser o mês, bimestre, trimestre, semestre, ano e etc)",
                              style: TextStyle(fontSize: 24.0),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "E também temos a expressão para o cálculo total do montante que é a soma do"
                              " juros e do capital inicial.",
                              style: TextStyle(fontSize: 24.0),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width *.5,
                              child: Image.asset(
                                  "images/operacoes/juros_simples/jurosSimples_3.png"),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "Vamos para um exemplo prático:",
                              style: TextStyle(fontSize: 24.0),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "Qual o valor do montante gerado por um capital de R\$1.650,00 que é aplicado"
                              " no regime de juros simples a uma taxa mensal de 3.5% durante 8 meses?",
                              style: TextStyle(fontSize: 24.0),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width *.9,
                              child: Image.asset(
                                  "images/operacoes/juros_simples/jurosSimples_4.png"),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 15.0, bottom: 5.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width *.8,
                              child: Image.asset(
                                  "images/operacoes/juros_simples/jurosSimples_5.png"),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 15.0, bottom: 5.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width *.65,
                              child: Image.asset(
                                  "images/operacoes/juros_simples/jurosSimples_6.png"),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(10, 10, 10, 25),
                            child: Text(
                              "O montante produzido é de R\$2.112,00.",
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