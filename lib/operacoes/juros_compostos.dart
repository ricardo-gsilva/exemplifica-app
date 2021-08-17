import 'package:exemplifica_git/calculadoras/calc_juros_compostos.dart';
import 'package:exemplifica_git/components/drawer_comp/drawer_page.dart';
import 'package:exemplifica_git/person_icons.dart';
import 'package:flutter/material.dart';

class JurosCompostos extends StatefulWidget {
  @override
  _JurosCompostosState createState() => _JurosCompostosState();
}

class _JurosCompostosState extends State<JurosCompostos> {

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
                                builder: (context) => CalcJurosC()
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
                                  "images/operacoes/juros_compostos/jurosCompostos_1.png"),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "Os Juros Compostos são mais utilizados em situações rotineiras do nosso dia."
                              " Compras parceladas a longo prazo são um bom exemplo! Outras situações comuns"
                              " são investimentos, empréstimos e no atraso de pagamento de alguma conta.",
                              style: TextStyle(fontSize: 24.0),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "A diferença entre o Juros Simples e o Juros Compostos é que o Juros Simples"
                              " é calculado sempre com referência ao valor anterior, já o Juros Compostos"
                              " é calculado sempre com base no valor inicial.",
                              style: TextStyle(fontSize: 24.0),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Resumindo:",
                                style: TextStyle(fontSize: 24.0),
                              ),
                            )
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "Se você fez uma aplicação de R\$1.000,00 no mês de Março, o Juros Simples terá"
                              " como referência o valor do mês de Março, e no próximo mês irá usar o mês de"
                              " Abril como referência e assim segue. Já no Juros Compostos, o valor base"
                              " será sempre o investido inicialmente que é o valor de R\$1.000,00. A longo"
                              " prazo o Juros Compostos terá maior rendimento que o Juros Simples.",
                              style: TextStyle(fontSize: 24.0),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "A expressão para o cálculo de Juros Compostos é:",
                              style: TextStyle(fontSize: 24.0),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width *.6,
                              child: Image.asset(
                                  "images/operacoes/juros_compostos/jurosCompostos_2.png"),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "O significado de cada letra é:\n\n"
                              "C = Capital. Esse é o valor investido.\n"
                              "J = Juros.\n"
                              "i = Taxa de Juros.\n"
                              "t = Tempo. É o período de tempo que o valor será aplicado.\n"
                              "M = Montante. Valor final com a soma do capital e do juros.\n",
                              style: TextStyle(fontSize: 24.0),
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
                              "Foi aplicado um capital de R\$2600 a juros compostos em um fundo de"
                              " investimento que rende 9.5% a.a. Qual será o juros acumulado após 24 meses?",
                              style: TextStyle(fontSize: 24.0),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "Os dados extraídos são:\n\n"
                              "C = 2600; \n"
                              "i = 9.5% a.a. \n"
                              "t = 24 meses.",
                              style: TextStyle(fontSize: 24.0),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "Temos o tempo em meses. Sabemos que 1 ano contém 12 meses, logo 24 dividido"
                              " por 12 nos da 2 anos. Então t passa a ser 2. Outro detalhe é que a taxa"
                              " precisa ser escrita na forma decimal, então precisamos dividir o valor da"
                              " taxa de juros de 9.5 a.a. por 100. Assim teremos i = 0,095.",
                              style: TextStyle(fontSize: 24.0),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width *.8,
                              child: Image.asset(
                                  "images/operacoes/juros_compostos/jurosCompostos_3.png"),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "Agora precisamos encontrar o juros:",
                              style: TextStyle(fontSize: 24.0),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width *.8,
                              child: Image.asset("images/operacoes/juros_compostos/jurosCompostos_4.png"),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "Vamos agora usar um exemplo para se encontrar o tempo:",
                              style: TextStyle(fontSize: 24.0),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "Quanto tempo um capital de R\$3100,00 aplicado a juros compostos, com taxa"
                              " de 12% a.a, leva para gerar um montante de R\$5600,00?",
                              style: TextStyle(fontSize: 24.0),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "O t é uma potência e encontraremos uma equação exponencial. É um valor que"
                              " pode ser resolvido por fatoração ou em muitos casos, só por logaritmo."
                              " Por essa razão é recomendado que se use uma calculadora científica. ",
                              style: TextStyle(fontSize: 24.0),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "Os dados a serem extraídos são:",
                              style: TextStyle(fontSize: 24.0),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width *.8,
                              child: Image.asset("images/operacoes/juros_compostos/jurosCompostos_5.png"),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "Vamos agora encontrar a taxa de juros:",
                              style: TextStyle(fontSize: 24.0),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "Qual é a taxa de juros aplicada em um capital de R\$950 gere um juros de"
                              " R\$370 em dois anos?",
                              style: TextStyle(fontSize: 24.0),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width *.45,
                              child: Image.asset("images/operacoes/juros_compostos/jurosCompostos_6.png"),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "Vamos encontrar primeiramente o montante:",
                              style: TextStyle(fontSize: 24.0),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width *.5,
                              child: Image.asset("images/operacoes/juros_compostos/jurosCompostos_7.png"),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "Agora seguimos com a resolução:",
                              style: TextStyle(fontSize: 24.0),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width *.65,
                              child: Image.asset("images/operacoes/juros_compostos/jurosCompostos_8.png"),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "Precisamos resolver a raiz quadrada de 1,389 e encontramos o valor 1,178."
                              " Agora continuando podemos encontrar o valor final:",
                              style: TextStyle(fontSize: 24.0),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width *.5,
                              child: Image.asset("images/operacoes/juros_compostos/jurosCompostos_9.png"),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "Podemos multiplicar por 100 e então temos 17,8% de taxa de juros a.a.",
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