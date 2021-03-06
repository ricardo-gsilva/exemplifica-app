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
                              "Os Juros Compostos s??o mais utilizados em situa????es rotineiras do nosso dia."
                              " Compras parceladas a longo prazo s??o um bom exemplo! Outras situa????es comuns"
                              " s??o investimentos, empr??stimos e no atraso de pagamento de alguma conta.",
                              style: TextStyle(fontSize: 24.0),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "A diferen??a entre o Juros Simples e o Juros Compostos ?? que o Juros Simples"
                              " ?? calculado sempre com refer??ncia ao valor anterior, j?? o Juros Compostos"
                              " ?? calculado sempre com base no valor inicial.",
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
                              "Se voc?? fez uma aplica????o de R\$1.000,00 no m??s de Mar??o, o Juros Simples ter??"
                              " como refer??ncia o valor do m??s de Mar??o, e no pr??ximo m??s ir?? usar o m??s de"
                              " Abril como refer??ncia e assim segue. J?? no Juros Compostos, o valor base"
                              " ser?? sempre o investido inicialmente que ?? o valor de R\$1.000,00. A longo"
                              " prazo o Juros Compostos ter?? maior rendimento que o Juros Simples.",
                              style: TextStyle(fontSize: 24.0),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "A express??o para o c??lculo de Juros Compostos ??:",
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
                              "O significado de cada letra ??:\n\n"
                              "C = Capital. Esse ?? o valor investido.\n"
                              "J = Juros.\n"
                              "i = Taxa de Juros.\n"
                              "t = Tempo. ?? o per??odo de tempo que o valor ser?? aplicado.\n"
                              "M = Montante. Valor final com a soma do capital e do juros.\n",
                              style: TextStyle(fontSize: 24.0),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "Vamos para um exemplo pr??tico:",
                              style: TextStyle(fontSize: 24.0),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "Foi aplicado um capital de R\$2600 a juros compostos em um fundo de"
                              " investimento que rende 9.5% a.a. Qual ser?? o juros acumulado ap??s 24 meses?",
                              style: TextStyle(fontSize: 24.0),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "Os dados extra??dos s??o:\n\n"
                              "C = 2600; \n"
                              "i = 9.5% a.a. \n"
                              "t = 24 meses.",
                              style: TextStyle(fontSize: 24.0),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "Temos o tempo em meses. Sabemos que 1 ano cont??m 12 meses, logo 24 dividido"
                              " por 12 nos da 2 anos. Ent??o t passa a ser 2. Outro detalhe ?? que a taxa"
                              " precisa ser escrita na forma decimal, ent??o precisamos dividir o valor da"
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
                              "O t ?? uma pot??ncia e encontraremos uma equa????o exponencial. ?? um valor que"
                              " pode ser resolvido por fatora????o ou em muitos casos, s?? por logaritmo."
                              " Por essa raz??o ?? recomendado que se use uma calculadora cient??fica. ",
                              style: TextStyle(fontSize: 24.0),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "Os dados a serem extra??dos s??o:",
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
                              "Qual ?? a taxa de juros aplicada em um capital de R\$950 gere um juros de"
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
                              "Agora seguimos com a resolu????o:",
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
                              "Podemos multiplicar por 100 e ent??o temos 17,8% de taxa de juros a.a.",
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