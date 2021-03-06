import 'package:exemplifica_git/calculadoras/calc_regra_de_3.dart';
import 'package:exemplifica_git/components/drawer_comp/drawer_page.dart';
import 'package:exemplifica_git/person_icons.dart';
import 'package:flutter/material.dart';

class RegraDe3 extends StatefulWidget {
  @override
  _RegraDe3State createState() => _RegraDe3State();
}

class _RegraDe3State extends State<RegraDe3> {

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
                            builder: (context)
                            => CalcRegraDe3()
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
                      child: Image.asset("images/operacoes/regra_de3/regra_de3_14.png"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "A regra de 3 ?? encontrada em duas formas, que s??o: Simples e Composta. Elas definem"
                      " a propor????o entre grandezas, podendo ir de velocidade, dist??ncia, peso, altura e"
                      " qualquer outra grandeza que possamos definir. Esse m??todo ?? utilizado para encontrar"
                      " um valor desconhecido, quando temos duas ou mais grandezas declaradas. N??o ??"
                      " complicado de entender! Vamos aos exemplos.",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.9,
                        child: Image.asset("images/operacoes/regra_de3/regra_de3_2.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "A regra de 3 simples ?? feita com base em duas grandezas. Imagine que voc?? tenha que"
                      " preparar o almo??o para 6 pessoas todos os dias e para isso utilize 1kg de arroz, ou"
                      " seja, s??o 1000 gramas de arroz para fazer o almo??o para essas 6 pessoas. Mas no dia"
                      " de hoje voc?? tem 5 pessoas para o almo??o e n??o gostaria de fazer mais comida do que o"
                      " necess??rio, como poder?? saber a propor????o correta de arroz? Para isso vamos utilizar"
                      " a regra de 3 simples!",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.6,
                        child: Image.asset("images/operacoes/regra_de3/regra_de3_3.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Seguindo com a regra de 3, apenas devemos multiplicar os valores na"
                      " diagonal. Iremos multiplicar o 5 por 1000g e o 6 pelo x. Ficar?? assim:",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.5,
                        child: Image.asset("images/operacoes/regra_de3/regra_de3_4.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Obs: Nas explica????es mais simples sobre matem??tica, mantivemos o 'x' como o s??mbolo"
                      " da multiplica????o. Mas em conceitos um pouco mais avan??ados de matem??tica, voc??"
                      " poder?? encontrar o 'x' sendo um dos elementos da equa????o que estiver estudando, como"
                      " pode ser visto no caso de equa????o de 1?? grau. Ent??o iremos utilizar o s??mbolo mais"
                      " comum encontrado que ?? o '.', mas voc?? tamb??m poder?? encontrar casos com o"
                      " aster??sco '*'.",
                      style: TextStyle(fontSize: 24.0, color: Colors.red.shade400),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Dando continuidade a resolu????o dessa quest??o, seguimos com a multiplica????o do 5.1000g"
                      " e logo depois teremos a express??o 6x = 5000g e ent??o iremos inverter o lado que est??"
                      " o 6, deixando o 'x' isolado. Vejamos a seguir:",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.4,
                        child: Image.asset("images/operacoes/regra_de3/regra_de3_5.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Como j?? foi explicado anteriormente, quando um n??mero est?? de um lado e passa para o"
                      " outro lado da express??o, o sinal dele muda. Sinal de + muda para -, sinal de * muda"
                      " para / e vice-versa. Assim dividimos o valor de 5000 por 6 e temos o valor"
                      " de 'x'  que ??:",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.35,
                        child: Image.asset("images/operacoes/regra_de3/regra_de3_6.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Ent??o para fazer a por????o correta de arroz para as 5 pessoas, voc?? ter?? que usar"
                      " 833,3 gramas de arroz, sem que fa??a comida em excesso.",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.9,
                        child: Image.asset("images/operacoes/regra_de3/regra_de3_7.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "A Regra de 3 composta ?? feita com base em tr??s grandezas ou mais grandezas que podem"
                      " ser inversamente proporcionais. Vamos ao exemplo:",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Imagine que temos 6 pedreiros que ir??o trabalhar durante 7 horas para erguer 3 muros."
                      " Mas o dono do local decidiu que ser?? necess??rio fazer 5 muros em 10 horas. Quantos"
                      " pedreiros ser??o necess??rios para que os 5 muros sejam erguidos em 10 horas?",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.8,
                        child: Image.asset("images/operacoes/regra_de3/regra_de3_8.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Para resolver a situa????o e encontrar o n??mero de pedreiros necess??rios, iremos seguir"
                      " com a seguinte equa????o matem??tica:",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.35,
                        child: Image.asset("images/operacoes/regra_de3/regra_de3_9.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Isolamos os pedreiros e multiplicamos as duas outras grandezas que s??o horas e muros"
                      " para obter um ??nico resultado.",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.28,
                        child: Image.asset("images/operacoes/regra_de3/regra_de3_10.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Agora seguimos com a mesma maneira que resolvemos a regra de 3 simples. Multiplicamos"
                      " o 50 com o 6 e o 'x' com o 21.",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.45,
                        child: Image.asset("images/operacoes/regra_de3/regra_de3_11.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Agora iremos isolar o 'x' e passaremos o 21 para o outro lado dividindo, j?? que ele"
                      " est?? multiplicando.",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.35,
                        child: Image.asset("images/operacoes/regra_de3/regra_de3_12.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Com isso teremos o resultado de 'x' que ?? o n??mero de pedreiros necess??rios para"
                      " fazer a obra no tempo proposto.",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.40,
                        child: Image.asset("images/operacoes/regra_de3/regra_de3_13.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 25),
                    child: Text(
                      "Esse valor pode ser arredondado para 14 e assim teremos a resposta de que para"
                      " levantar os 5 muros nas 10 horas que foram estipuladas, ser??o necess??rio 14"
                      " pedreiros.",
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