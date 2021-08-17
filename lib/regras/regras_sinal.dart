import 'package:exemplifica_git/components/drawer_comp/drawer_page.dart';
import 'package:flutter/material.dart';

class RegrasSinais extends StatefulWidget {
  @override
  _RegrasSinaisState createState() => _RegrasSinaisState();
}

class _RegrasSinaisState extends State<RegrasSinais> {
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
                      child: Image.asset("images/regras_sinal/regras_sinais_1.png"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                        "A regra mais conhecida é a regra de sinal, muito utilizada principalmente nas operações"
                            " de multiplicação. Abaixo você pode ver como a regra funciona de forma bem simples!",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.6,
                        child: Image.asset("images/regras_sinal/regras_sinais_2.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "ou seja um número positivo que multiplica outro número positivo dara um resultado com número positivo.",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                        "Veremos agora o outro caso das regras de sinais:",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.4,
                        child: Image.asset("images/regras_sinal/regras_sinais_5.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Note que nessa operação o resultado foi negativo. Isso se deve ao fato de que sinais diferentes"
                          " sempre darão um resultado negativo.",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                        "Veja outra situação, no qual teremos dois números negativos sendo multiplicados.",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.4,
                        child: Image.asset("images/regras_sinal/regras_sinais_3.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Como podem ver, o resultado foi positivo. Mesmo que os números sejam negativos, o que vale é a regra"
                      " de sinal que nos diz que sinais iguais terão resultado positivo.",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Lembrem-se sempre dessa informação!!",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Um número positivo qualquer que múltiplica um outro número positivo qualquer dara"
                      " sempre um resultado POSITIVO.",
                      style: TextStyle(fontSize: 24.0, color: Colors.red),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Um número negativo qualquer que múltiplica um outro número negativo qualquer, dara"
                      " sempre um resultado POSITIVO.",
                      style: TextStyle(fontSize: 24.0, color: Colors.red),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Já no caso de um número positivo que múltiplica um número negativo ou vice-versa, o"
                      " resultado sempre será NEGATIVO.",
                      style: TextStyle(fontSize: 24.0, color: Colors.red),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Obs: Essas regras também são válidas para operações de divisão.",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 40),
                    child: Text(
                        "As informações podem parecer repetitivas, mas lembre-se que é assim que você consegue gravar"
                            " uma informação em sua mente.",
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