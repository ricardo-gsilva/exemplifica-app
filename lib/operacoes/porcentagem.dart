import 'package:exemplifica_git/calculadoras/calc_porcentagem.dart';
import 'package:exemplifica_git/components/drawer_comp/drawer_page.dart';
import 'package:exemplifica_git/person_icons.dart';
import 'package:exemplifica_git/ui/operacoes.dart';
import 'package:flutter/material.dart';

class Porcentagem extends StatefulWidget {
  @override
  _PorcentagemState createState() => _PorcentagemState();
}

class _PorcentagemState extends State<Porcentagem> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/backapp.png"), fit: BoxFit.cover,
          )
        ),
        child: Scaffold(
          appBar: AppBar(
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.reply),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Operacoes()));
                },
              ),
              IconButton(
                icon: Icon(Person.calc),
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context)
                          => CalcPorcentagem()
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
                    child: Image.asset("images/operacoes/porcentagem/porcentagem_10.png"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                        "A porcentagem é uma razão de denominador 100. O símbolo utilizado é o % e também é"
                        " conhecido como razão percentual ou centesimal, é muito utilizado para matemática"
                        " financeira, por essa razão é importante saber como utilizar. Vamos aos exemplos:",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                        "Imaginei que você tenha 250 reais e que precisa tirar 40% do valor desse dinheiro"
                        " para o pagamento de uma dívida. Para encontrar o valor da dívida seguiremos com a"
                        " regra de 3 que pode ser aplicada facilmente nessas condições de porcentagem. Veja"
                        " a resolução:",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width *.6,
                    child: Image.asset("images/operacoes/porcentagem/porcentagem_2.png"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                        "Após montar a de regra de 3, seguimos para a resolução que é bem simples."
                        "Iremos multiplicar o valor de 250 pelos 40% e o 'x' pelos 100%. ",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width *.8,
                    child: Image.asset("images/operacoes/porcentagem/porcentagem_3.png"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                        "Podemos tirar os sinais de % para simplificar a questão e ficar com a visão mais"
                        " clara. ",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width *.55,
                    child: Image.asset("images/operacoes/porcentagem/porcentagem_4.png"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      "Agora seguimos isolando o 'x' e depois resolvemos o restante para obter o valor da"
                      " dívida.",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width *.40,
                    child: Image.asset("images/operacoes/porcentagem/porcentagem_5.png"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      "O valor que representa os 40% da dívida é de 100 reais. Bem simples não é mesmo?",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      "Podemos também usar como exemplo uma possível situação onde você terá que encontrar"
                      " um valor de ganho ou aumento em porcentagem. Vamos para um exemplo: ",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      "Imagine que você tenha que utilizar 900ml de água para fazer uma receita qualquer. Mas"
                      " conforme você vai preparando a receita, descobre que irá precisar de mais 30% de água"
                      " para a parte final da sua receita. Quantos ml de água serão necessários para terminar"
                      " a receita? Se atente ao fato de que o valor foi passado em porcentagem. Vamos resolver"
                      " essa questão utilizazando a regra de 3.",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width *.75,
                    child: Image.asset("images/operacoes/porcentagem/porcentagem_6.png"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      "Seguindo com a mesma resolução anterior temos:",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width *.60,
                    child: Image.asset("images/operacoes/porcentagem/porcentagem_7.png"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      "Temos o resultado de 270ml. Então precisaremos de mais 270ml de água para terminar a"
                      " receita. Existe uma outra forma de resolver que irá mostrar a quantidade total de"
                      " água que será utilizada na receita e não somente os 30% que serão utilizados na"
                      " parte final. Essa outra maneira de resolver a questão é feita da seguinte forma:",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width *.80,
                    child: Image.asset("images/operacoes/porcentagem/porcentagem_9.png"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      "Somamos a quantidade que precisamos com o total que temos em % e seguimos com a"
                      " seguinte resolução:",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width *.70,
                    child: Image.asset("images/operacoes/porcentagem/porcentagem_8.png"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 25),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      "Temos o total de 1170ml de água para fazer a receita. Se formos pegar o resultado"
                      " anterior de 900ml + os outros 270ml que serão utilizados na parte final da receita,"
                      " teremos os mesmos 1170ml de água.",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}