import 'package:exemplifica_git/calculadoras/calc_funcoes.dart';
import 'package:exemplifica_git/components/drawer_comp/drawer_page.dart';
import 'package:exemplifica_git/person_icons.dart';
import 'package:flutter/material.dart';

class Funcoes extends StatefulWidget {
  @override
  _FuncoesState createState() => _FuncoesState();
}

class _FuncoesState extends State<Funcoes> {

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
                            => CalcFuncoes()
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
                      child: Image.asset("images/operacoes/funcoes/funcoes_1.png"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Funções Matemáticas são extremamente importantes dentro da matemática. Uma função é"
                      " uma relação existente entre dois conjuntos que podemos chamar de CONJUNTO A e"
                      " CONJUNTO B. Essa relação permite associar elementos entre os dois conjuntos, em"
                      " linguagem matemática é conhecido como:",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.55,
                        child: Image.asset("images/operacoes/funcoes/funcoes_2.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "A leitura é feita por f de A em B!",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "O conjunto que for denominado como A, ou seja, o primeiro conjunto, é chamado de"
                      " DOMÍNIO e o segundo conjunto de CONTRADOMÍNIO. Existe um ponto a ser destacado e"
                      " que deve ser sempre lembrado sobre a diferença de função f que é a própria função"
                      " em si e f(x) que é a função em um determinado ponto do DOMÍNIO.",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Com isso, podemos definir que para cada valor de x que pertence ao DOMÍNIO, teremos"
                      " um valor y ou se preferir f(x) que irá pertencer ao CONTRADOMÍNIO.",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.85,
                        child: Image.asset("images/operacoes/funcoes/funcoes_3.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Temos alguns tipos específios de funções como: Função Afim, Função Bijetora, Função"
                      " Injetora e Função Sobrejetora. Existem algumas outras, mas não iremos"
                      " abordá-las aqui.",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.6,
                        child: Image.asset("images/operacoes/funcoes/funcoes_4_1.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "É a função de primeiro grau, composta por dois números reais que possam satisfazer"
                      " a condição ∀x∈R e b≠0. Onde ∀x∈R é o conjunto ax que deve pertencer ao conjunto"
                      " de números reais e o b≠0 que mostra a condição do b ser diferente de 0.",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "A função é dada por:",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.65,
                        child: Image.asset("images/operacoes/funcoes/funcoes_4.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "E o gráfico da função é:",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.8,
                        child: Image.asset("images/operacoes/funcoes/funcoes_5.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "a é o coeficiente angular do gráfico de f.",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "b é o coeficiente linear, ou o ponto de intersecção com o eixo y.",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "x é a variável independente.",
                        style: TextStyle(fontSize: 24.0),
                      ),
                    )
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                          "O gráfico da função afim será sempre uma reta, o que irá mudar é apenas a posição"
                          " que esse gráfico se encontra, dependendo dos coeficientes linear e angular de"
                          " cada função.",
                          style: TextStyle(fontSize: 24.0),
                        ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                          "Vamos para um exemplo:",
                          style: TextStyle(fontSize: 24.0),
                        ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                          "Um vendedor de motos precisa atingir a meta mensal de motos vendidas no valor"
                          " de R\$100.000,00. Ele já vendeu R\$35.000,00 e cada moto é vendida por"
                          " R\$6.000,00. Quantas motos ele precisa vender para atingir a meta do mês e"
                          " ganhar a bonificação de 3% de comissão?",
                          style: TextStyle(fontSize: 24.0),
                        ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "A função é dada por",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.9,
                        child: Image.asset("images/operacoes/funcoes/funcoes_6.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "A resolução dessa questão é muito simples, o x é dado pelo número de motos que devem"
                      " ser vendidas para atingir a meta de vendas. Seguidos com a resolução:",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.8,
                        child: Image.asset("images/operacoes/funcoes/funcoes_7.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Chegamos ao resultado de 10,83. Como precisamos de um valor inteiro, iremos tirar"
                      " a prova utilizando o valor 10 primeiramente.",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.9,
                        child: Image.asset("images/operacoes/funcoes/funcoes_8.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Logo vemos que a venda de 10 motos não será suficiente para chegar a meta mensal."
                      " Como o valor 10 não conseguimos atingir o valor da meta que é de R\$100.000,00, vamos"
                      " tentar com o próximo valor imediato que é o 11.",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.9,
                        child: Image.asset("images/operacoes/funcoes/funcoes_9.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Podemos ver que agora conseguimos atingir o valor da meta e assim definimos que"
                      " para que o vendedor consiga atingir sua meta mensal com a venda de motos, ele"
                      " ainda precisa vender mais 11 motos até o fim do mês.",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.6,
                        child: Image.asset("images/operacoes/funcoes/funcoes_10.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Uma função é definida como injetora quando elementos distintos no conjunto DOMÍNIO,"
                      " possuem imagens distintas no CONTRADOMÍNIO que devem satisfazer a seguinte"
                      " condição:",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.9,
                        child: Image.asset("images/operacoes/funcoes/funcoes_11.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Essa condição funciona da seguinte forma, para qualquer x1, x2 e etc que pertençam"
                      " ao conjunto DOMÍNIO aonde f(x1) é diferente de f(x2). Então x1 é diferente de x2.",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Vejamos um exemplo de função injetora:",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.5,
                        child: Image.asset("images/operacoes/funcoes/funcoes_12.png"),
                      )
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        width: MediaQuery.of(context).size.width *.7,
                        child: Image.asset("images/operacoes/funcoes/funcoes_13.png"),
                      )
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        width: MediaQuery.of(context).size.width *.7,
                        child: Image.asset("images/operacoes/funcoes/funcoes_14.png"),
                      )
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        alignment: Alignment.centerRight,
                        width: MediaQuery.of(context).size.width *.7,
                        child: Image.asset("images/operacoes/funcoes/funcoes_15.png"),
                      )
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        alignment: Alignment.centerRight,
                        width: MediaQuery.of(context).size.width *.7,
                        child: Image.asset("images/operacoes/funcoes/funcoes_16.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Logo temos:",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "CONJUNTO DOMÍNIO",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.6,
                        child: Image.asset("images/operacoes/funcoes/funcoes_17.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "CONJUNTO CONTRADOMÍNIO",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.9,
                        child: Image.asset("images/operacoes/funcoes/funcoes_18.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "É notável que a função terá sempre resultados diferentes, independente do valor"
                      " escolhido para x. Logo é uma função injetora!",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Vamos pegar um exemplo de função que não se enquadra na condição de função injetora.",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.6,
                        child: Image.asset("images/operacoes/funcoes/funcoes_19.png"),
                      )
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.6,
                        child: Image.asset("images/operacoes/funcoes/funcoes_20.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Com isso temos:",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "CONJUNTO DOMÍNIO",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.45,
                        child: Image.asset("images/operacoes/funcoes/funcoes_21.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "CONJUNTO CONTRADOMÍNIO",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.55,
                        child: Image.asset("images/operacoes/funcoes/funcoes_22.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Como é possível notar, a função f(x) 2x² - 1 não é uma função injetora, pois não"
                      " permite que qualquer valor satisfaça a condição de uma função injetora.",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.75,
                        child: Image.asset("images/operacoes/funcoes/funcoes_23.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Uma função é sobrejetora quando existir pelo menos um elemento pertencente ao"
                      " conjunto DOMÍNIO para todo elemento pertencente ao conjunto CONTRADOMÍNIO"
                      " tal que f(x) = y.",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.85,
                        child: Image.asset("images/operacoes/funcoes/funcoes_24.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Em outras palavras quando a função f, no conjunto DOMÍNIO e com CONTRADOMÍNIO, sendo"
                      " definida por f(x) = y. A função f será sobrejetora se, e somente se, para todo"
                      " elemento pertencente ao conjunto CONTRADOMÍNIO, existir um elemento igual no"
                      " conjunto DOMÍNIO.",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Vamos pegar um exemplo de função que se enquadra na condição de função sobrejetora.",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.55,
                        child: Image.asset("images/operacoes/funcoes/funcoes_25.png"),
                      )
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.55,
                        child: Image.asset("images/operacoes/funcoes/funcoes_26.png"),
                      )
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.55,
                        child: Image.asset("images/operacoes/funcoes/funcoes_27.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "CONJUNTO DOMÍNIO",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.6,
                        child: Image.asset("images/operacoes/funcoes/funcoes_28.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "CONJUNTO CONTRADOMÍNIO",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.45,
                        child: Image.asset("images/operacoes/funcoes/funcoes_29.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Pode podem ver, todos os elementos do conjunto CONTRADOMÍNIO pertencem ao conjunto"
                      " DOMÍNIO.",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.75,
                        child: Image.asset("images/operacoes/funcoes/funcoes_30.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "A função é definida como bijetora quando pode ser injetora e sobrejetora ao mesmo"
                      " tempo. Vamos para um exemplo direto:",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.5,
                        child: Image.asset("images/operacoes/funcoes/funcoes_31.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Onde y é um elemento do conjunto CONTRADOMÍNIO (B) e x é um elemento do conjunto"
                      " DOMÍNIO.",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "CONJUNTO DOMÍNIO",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.5,
                        child: Image.asset("images/operacoes/funcoes/funcoes_32.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "CONJUNTO CONTRADOMÍNIO",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.55,
                        child: Image.asset("images/operacoes/funcoes/funcoes_33.png"),
                      )
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.55,
                        child: Image.asset("images/operacoes/funcoes/funcoes_34.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 25),
                    child: Text(
                      "Em uma função bijetora o DOMÍNIO e o CONTRADOMÍNIO tem o mesmo número de elementos"
                      " e cada elemento de um conjunto corresponde a um outro do outro conjunto.",
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