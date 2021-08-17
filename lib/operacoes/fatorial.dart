import 'package:exemplifica_git/calculadoras/calc_fatorial.dart';
import 'package:exemplifica_git/components/drawer_comp/drawer_page.dart';
import 'package:exemplifica_git/person_icons.dart';
import 'package:flutter/material.dart';

class Fatorial extends StatefulWidget {
  @override
  _FatorialState createState() => _FatorialState();
}

class _FatorialState extends State<Fatorial> {

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
                                => CalcFatorial()
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
                              child: Image.asset("images/operacoes/fatorial/fatorial_1.png"),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "Fatorial é representado por n! e se trata de um número natural inteiro e"
                              " positivo, pois um fatorial negativo sempre será igual a 0. Teremos como"
                              " exemplo de fatorial o 5!.",
                              style: TextStyle(fontSize: 24.0),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width *1.0,
                                child: Image.asset("images/operacoes/fatorial/fatorial_2.png"),
                              )
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "Acredito que esse exemplo deixou bem claro como funciona a resolução de um"
                              " número fatorial. O número fatorial é calculado pela multiplicação dos números"
                              " anteriores, logo se temos o número fatorial 3! o resultado será a"
                              " multiplicação de 3 x 2 x 1 e assim segue por todos os outros"
                              " números fatoriais.",
                              style: TextStyle(fontSize: 24.0),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              'Obs: 0! Ou 0 fatorial sempre será 1, ou seja, 0! = 1. ',
                              style: TextStyle(fontSize: 24.0, color: Colors.red),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "Os números fatoriais podem ser usados em diversas ocasiões, desde operações"
                              " simples de soma e multiplicação, até mesmo uma equação. Seguem alguns"
                              " exemplos:",
                              style: TextStyle(fontSize: 24.0),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width *.9,
                                child: Image.asset("images/operacoes/fatorial/fatorial_3.png"),
                              )
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "As equações fatoriais são simples de serem resolvidas. Temos o exemplo:",
                              style: TextStyle(fontSize: 24.0),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width *.40,
                                child: Image.asset("images/operacoes/fatorial/fatorial_4.png"),
                              )
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "Para conseguirmos encontrar o valor de X, precisamos encontrar primeiramente"
                              " o valor de 3 fatorial.",
                              style: TextStyle(fontSize: 24.0),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width *.50,
                                child: Image.asset("images/operacoes/fatorial/fatorial_5.png"),
                              )
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "Agora podemos dar continuidade a resolução da equação.",
                              style: TextStyle(fontSize: 24.0),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width *.40,
                                child: Image.asset("images/operacoes/fatorial/fatorial_6.png"),
                              )
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "Vamos isolar o X para obter o valor! Lembrando que após trocarmos um número"
                              " pra o outro lado da equação, o sinal dele muda. No caso a parte - 22 =,"
                              " quando o 22 for trocado para o outro lado irá ficar como = 22, o sinal do"
                              " 22 muda de negativo para positivo.",
                              style: TextStyle(fontSize: 24.0),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width *.40,
                                child: Image.asset("images/operacoes/fatorial/fatorial_7.png"),
                              )
                          ),
                          Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                child: Image.asset("images/operacoes/fatorial/fatorial_8.png"),
                              )
                          ),
                          Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width *.40,
                                child: Image.asset("images/operacoes/fatorial/fatorial_9.png"),
                              )
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "Vamos isolar o X para obter o valor! Lembrando que após trocarmos um número"
                              " pra o outro lado da equação, o sinal dele muda. No caso a parte - 22 =,"
                              " quando o 22 for trocado para o outro lado ficando = 22, o sinal do 22"
                              " muda de negativo para positivo.",
                              style: TextStyle(fontSize: 24.0),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width *.8,
                                child: Image.asset("images/operacoes/fatorial/fatorial_10.png"),
                              )
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "Agora podemos resolver a operação matemática.",
                              style: TextStyle(fontSize: 24.0),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "A mesma ideia segue para as outras operações.",
                              style: TextStyle(fontSize: 24.0),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                child: Image.asset("images/operacoes/fatorial/fatorial_11.png"),
                              )
                          ),
                          Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                child: Image.asset("images/operacoes/fatorial/fatorial_12.png"),
                              )
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "Logo temos o resultado:",
                              style: TextStyle(fontSize: 24.0),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width *.5,
                                child: Image.asset("images/operacoes/fatorial/fatorial_13.png"),
                              )
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "ou se preferir",
                              style: TextStyle(fontSize: 24.0),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width *.55,
                                child: Image.asset("images/operacoes/fatorial/fatorial_14.png"),
                              )
                          ),
                          Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                child: Image.asset("images/operacoes/fatorial/fatorial_15.png"),
                              )
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "A divisão tem um processo um pouco diferente, segue exemplo abaixo.",
                              style: TextStyle(fontSize: 24.0),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width *.15,
                                child: Image.asset("images/operacoes/fatorial/fatorial_16.png"),
                              )
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "Para resolver esse exemplo, vamos passar pelo processo conhecido como"
                              " simplificação fatorial que nada mais é do que 'abrir' os valores do"
                              " fatorial, até o valor do número divisor e então poderemos 'cortar' dessa"
                              " operação esses valores, podendo dar continuidade somente com os"
                              " números que irão sobrar.",
                              style: TextStyle(fontSize: 24.0),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width *.5,
                                child: Image.asset("images/operacoes/fatorial/fatorial_17.png"),
                              )
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "Anulamos os valores até o 2!, assim podemos continuar com o que sobrou"
                              " desssa operação que é o 4 e o 3 que são resultantes do 4!. Logo eles"
                              " são multiplicados 4 x 3 = 12.",
                              style: TextStyle(fontSize: 24.0),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                child: Image.asset("images/operacoes/fatorial/fatorial_18.png"),
                              )
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "A multiplicação segue da mesma forma que adição e subtração:",
                              style: TextStyle(fontSize: 24.0),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width *.8,
                                child: Image.asset("images/operacoes/fatorial/fatorial_19.png"),
                              )
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "Logo teremos o resultado:",
                              style: TextStyle(fontSize: 24.0),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width *.55,
                                child: Image.asset("images/operacoes/fatorial/fatorial_20.png"),
                              )
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "ou se preferir",
                              style: TextStyle(fontSize: 24.0),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 25),
                              child: Container(
                                width: MediaQuery.of(context).size.width *.5,
                                child: Image.asset("images/operacoes/fatorial/fatorial_21.png"),
                              )
                          ),
                        ]
                    )
                )
            )
        )
    );
  }
}