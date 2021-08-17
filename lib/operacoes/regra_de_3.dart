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
                      "A regra de 3 é encontrada em duas formas, que são: Simples e Composta. Elas definem"
                      " a proporção entre grandezas, podendo ir de velocidade, distância, peso, altura e"
                      " qualquer outra grandeza que possamos definir. Esse método é utilizado para encontrar"
                      " um valor desconhecido, quando temos duas ou mais grandezas declaradas. Não é"
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
                      "A regra de 3 simples é feita com base em duas grandezas. Imagine que você tenha que"
                      " preparar o almoço para 6 pessoas todos os dias e para isso utilize 1kg de arroz, ou"
                      " seja, são 1000 gramas de arroz para fazer o almoço para essas 6 pessoas. Mas no dia"
                      " de hoje você tem 5 pessoas para o almoço e não gostaria de fazer mais comida do que o"
                      " necessário, como poderá saber a proporção correta de arroz? Para isso vamos utilizar"
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
                      " diagonal. Iremos multiplicar o 5 por 1000g e o 6 pelo x. Ficará assim:",
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
                      "Obs: Nas explicações mais simples sobre matemática, mantivemos o 'x' como o símbolo"
                      " da multiplicação. Mas em conceitos um pouco mais avançados de matemática, você"
                      " poderá encontrar o 'x' sendo um dos elementos da equação que estiver estudando, como"
                      " pode ser visto no caso de equação de 1º grau. Então iremos utilizar o símbolo mais"
                      " comum encontrado que é o '.', mas você também poderá encontrar casos com o"
                      " asterísco '*'.",
                      style: TextStyle(fontSize: 24.0, color: Colors.red.shade400),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Dando continuidade a resolução dessa questão, seguimos com a multiplicação do 5.1000g"
                      " e logo depois teremos a expressão 6x = 5000g e então iremos inverter o lado que está"
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
                      "Como já foi explicado anteriormente, quando um número está de um lado e passa para o"
                      " outro lado da expressão, o sinal dele muda. Sinal de + muda para -, sinal de * muda"
                      " para / e vice-versa. Assim dividimos o valor de 5000 por 6 e temos o valor"
                      " de 'x'  que é:",
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
                      "Então para fazer a porção correta de arroz para as 5 pessoas, você terá que usar"
                      " 833,3 gramas de arroz, sem que faça comida em excesso.",
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
                      "A Regra de 3 composta é feita com base em três grandezas ou mais grandezas que podem"
                      " ser inversamente proporcionais. Vamos ao exemplo:",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Imagine que temos 6 pedreiros que irão trabalhar durante 7 horas para erguer 3 muros."
                      " Mas o dono do local decidiu que será necessário fazer 5 muros em 10 horas. Quantos"
                      " pedreiros serão necessários para que os 5 muros sejam erguidos em 10 horas?",
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
                      "Para resolver a situação e encontrar o número de pedreiros necessários, iremos seguir"
                      " com a seguinte equação matemática:",
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
                      "Isolamos os pedreiros e multiplicamos as duas outras grandezas que são horas e muros"
                      " para obter um único resultado.",
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
                      "Agora iremos isolar o 'x' e passaremos o 21 para o outro lado dividindo, já que ele"
                      " está multiplicando.",
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
                      "Com isso teremos o resultado de 'x' que é o número de pedreiros necessários para"
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
                      " levantar os 5 muros nas 10 horas que foram estipuladas, serão necessário 14"
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