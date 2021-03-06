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
                              "A sigla MDC significa 'm??ximo divisor comum' que nada mais ?? do que o maior"
                              " n??mero divis??vel entre dois ou mais n??meros inteiros. Um n??mero natural possui"
                              " divisores, o menor divisor de um n??mero ser?? sempre o n??mero 1, enquanto que"
                              " o maior divisor ser?? o pr??prio n??mero.",
                              style: TextStyle(fontSize: 24.0),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              'Obs: ?? importante lembrar que nenhum n??mero pode ser dividido por 0.',
                              style: TextStyle(fontSize: 24.0, color: Colors.red),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "Vamos ver alguns exemplos de como encontrar o MDC de alguns n??meros. Os n??meros"
                              " do exemplo ser??o 15 e 30:",
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
                              "Como podemos ver o m??ximo divisor comum entre os n??meros 15 e 30, ?? o pr??prio"
                              " n??mero 15. Quando fatoramos para encontrar o MDC, diferente do MMC que pega"
                              " todos os n??meros que foram encontrados na farota????o e faz uma multiplica????o"
                              " de todos eles, no MDC s?? iremos multiplicar os valores que podem dividir ambos"
                              " os n??meros ao mesmo tempo. O 3 e o 5 podem dividir os dois valores. Mas o"
                              " n??mero 2 s?? pode dividir um deles, por essa raz??o ele n??o entra na parte final"
                              " da multiplica????o para encontrar o MDC. Depois de encontrar esses n??meros"
                              " divisores, basta multiplicar e assim encontrar?? o maior divisor comum. Veja"
                              " outro exemplo com os n??meros 12 e 18: ",
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
                              "Nesse exemplo o nosso MDC ?? o n??mero 6, o n??mero 2 da primeira linha que divide"
                              " 12 e 18 e o n??mero 3 que divide o 3 e o 9 s??o os divisores comuns. Tendo os"
                              " dois n??meros, n??s os multiplicamos e temos o n??mero 6 que ?? o m??ximo divisor"
                              " comum entre o n??mero 12 e 18. Simples n??o ?? mesmo?",
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