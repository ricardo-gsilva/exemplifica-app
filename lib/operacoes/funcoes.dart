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
                      "Fun????es Matem??ticas s??o extremamente importantes dentro da matem??tica. Uma fun????o ??"
                      " uma rela????o existente entre dois conjuntos que podemos chamar de CONJUNTO A e"
                      " CONJUNTO B. Essa rela????o permite associar elementos entre os dois conjuntos, em"
                      " linguagem matem??tica ?? conhecido como:",
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
                      "A leitura ?? feita por f de A em B!",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "O conjunto que for denominado como A, ou seja, o primeiro conjunto, ?? chamado de"
                      " DOM??NIO e o segundo conjunto de CONTRADOM??NIO. Existe um ponto a ser destacado e"
                      " que deve ser sempre lembrado sobre a diferen??a de fun????o f que ?? a pr??pria fun????o"
                      " em si e f(x) que ?? a fun????o em um determinado ponto do DOM??NIO.",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Com isso, podemos definir que para cada valor de x que pertence ao DOM??NIO, teremos"
                      " um valor y ou se preferir f(x) que ir?? pertencer ao CONTRADOM??NIO.",
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
                      "Temos alguns tipos espec??fios de fun????es como: Fun????o Afim, Fun????o Bijetora, Fun????o"
                      " Injetora e Fun????o Sobrejetora. Existem algumas outras, mas n??o iremos"
                      " abord??-las aqui.",
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
                      "?? a fun????o de primeiro grau, composta por dois n??meros reais que possam satisfazer"
                      " a condi????o ???x???R e b???0. Onde ???x???R ?? o conjunto ax que deve pertencer ao conjunto"
                      " de n??meros reais e o b???0 que mostra a condi????o do b ser diferente de 0.",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "A fun????o ?? dada por:",
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
                      "E o gr??fico da fun????o ??:",
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
                      "a ?? o coeficiente angular do gr??fico de f.",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "b ?? o coeficiente linear, ou o ponto de intersec????o com o eixo y.",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "x ?? a vari??vel independente.",
                        style: TextStyle(fontSize: 24.0),
                      ),
                    )
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                          "O gr??fico da fun????o afim ser?? sempre uma reta, o que ir?? mudar ?? apenas a posi????o"
                          " que esse gr??fico se encontra, dependendo dos coeficientes linear e angular de"
                          " cada fun????o.",
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
                          " de R\$100.000,00. Ele j?? vendeu R\$35.000,00 e cada moto ?? vendida por"
                          " R\$6.000,00. Quantas motos ele precisa vender para atingir a meta do m??s e"
                          " ganhar a bonifica????o de 3% de comiss??o?",
                          style: TextStyle(fontSize: 24.0),
                        ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "A fun????o ?? dada por",
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
                      "A resolu????o dessa quest??o ?? muito simples, o x ?? dado pelo n??mero de motos que devem"
                      " ser vendidas para atingir a meta de vendas. Seguidos com a resolu????o:",
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
                      "Logo vemos que a venda de 10 motos n??o ser?? suficiente para chegar a meta mensal."
                      " Como o valor 10 n??o conseguimos atingir o valor da meta que ?? de R\$100.000,00, vamos"
                      " tentar com o pr??ximo valor imediato que ?? o 11.",
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
                      " ainda precisa vender mais 11 motos at?? o fim do m??s.",
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
                      "Uma fun????o ?? definida como injetora quando elementos distintos no conjunto DOM??NIO,"
                      " possuem imagens distintas no CONTRADOM??NIO que devem satisfazer a seguinte"
                      " condi????o:",
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
                      "Essa condi????o funciona da seguinte forma, para qualquer x1, x2 e etc que perten??am"
                      " ao conjunto DOM??NIO aonde f(x1) ?? diferente de f(x2). Ent??o x1 ?? diferente de x2.",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Vejamos um exemplo de fun????o injetora:",
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
                      "CONJUNTO DOM??NIO",
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
                      "CONJUNTO CONTRADOM??NIO",
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
                      "?? not??vel que a fun????o ter?? sempre resultados diferentes, independente do valor"
                      " escolhido para x. Logo ?? uma fun????o injetora!",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Vamos pegar um exemplo de fun????o que n??o se enquadra na condi????o de fun????o injetora.",
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
                      "CONJUNTO DOM??NIO",
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
                      "CONJUNTO CONTRADOM??NIO",
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
                      "Como ?? poss??vel notar, a fun????o f(x) 2x?? - 1 n??o ?? uma fun????o injetora, pois n??o"
                      " permite que qualquer valor satisfa??a a condi????o de uma fun????o injetora.",
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
                      "Uma fun????o ?? sobrejetora quando existir pelo menos um elemento pertencente ao"
                      " conjunto DOM??NIO para todo elemento pertencente ao conjunto CONTRADOM??NIO"
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
                      "Em outras palavras quando a fun????o f, no conjunto DOM??NIO e com CONTRADOM??NIO, sendo"
                      " definida por f(x) = y. A fun????o f ser?? sobrejetora se, e somente se, para todo"
                      " elemento pertencente ao conjunto CONTRADOM??NIO, existir um elemento igual no"
                      " conjunto DOM??NIO.",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Vamos pegar um exemplo de fun????o que se enquadra na condi????o de fun????o sobrejetora.",
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
                      "CONJUNTO DOM??NIO",
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
                      "CONJUNTO CONTRADOM??NIO",
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
                      "Pode podem ver, todos os elementos do conjunto CONTRADOM??NIO pertencem ao conjunto"
                      " DOM??NIO.",
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
                      "A fun????o ?? definida como bijetora quando pode ser injetora e sobrejetora ao mesmo"
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
                      "Onde y ?? um elemento do conjunto CONTRADOM??NIO (B) e x ?? um elemento do conjunto"
                      " DOM??NIO.",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "CONJUNTO DOM??NIO",
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
                      "CONJUNTO CONTRADOM??NIO",
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
                      "Em uma fun????o bijetora o DOM??NIO e o CONTRADOM??NIO tem o mesmo n??mero de elementos"
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