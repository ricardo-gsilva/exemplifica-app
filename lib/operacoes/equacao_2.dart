import 'package:exemplifica_git/calculadoras/calc_equacao_2.dart';
import 'package:exemplifica_git/components/drawer_comp/drawer_page.dart';
import 'package:exemplifica_git/person_icons.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Equacao_2 extends StatefulWidget {
  @override
  _Equacao_2State createState() => _Equacao_2State();
}

// ignore: camel_case_types
class _Equacao_2State extends State<Equacao_2> {

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
                            => CalcEquacao2()
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
                      child: Image.asset("images/operacoes/equacao_2/equacao2_1.png"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "A equa????o do segundo grau, tamb??m chamada de equa????o quadr??tica, ?? representada por:",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.7,
                        child: Image.asset("images/operacoes/equacao_2/equacao2_2.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Em uma equa????o do 2?? grau temos o 'x' como o valor desconhecido, as letras a, b e c"
                      " s??o conhecidos como coeficientes da equa????o. Esses coeficientes s??o n??meros reais,"
                      " com o coeficiente 'a' sendo sempre diferente de zero, pois do contr??rio passa a ser"
                      " uma equa????o do 1?? grau. Para resolver uma equa????o de segundo grau, precisamos encontrar"
                      " os valores reais de 'x', esses valores tornam a equa????o verdadeira. Esses valores s??o"
                      " conhecidos como ra??zes da equa????o, tendo em uma equa????o de segundo grau duas ra??zes"
                      " reais.",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Cabe ressaltar que existem dois tipos de equa????es de segundo grau. S??o as equa????es"
                      " completas e as incompletas! Nas equa????es completas todas as letras al??m do 'a', ou"
                      " seja, 'b' e 'c' tamb??m s??o diferentes de 0. J?? na equa????o incompleta, tanto 'b' ou" 
                      " 'c' podem ser iguais a 0, ou at?? mesmo os dois podem ser iguais a 0.",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Vamos ao primeiro exemplo que ser?? de uma equa????o incompleta. A equa????o a ser resolvida"
                      " ??:",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.5,
                        child: Image.asset("images/operacoes/equacao_2/equacao2_3.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Como j?? informado, se trata de uma equa????o incompleta de segundo grau, o 'b' = 0. Neste"
                      " tipo de equa????o podemos isolar o 'x', tornando a resolu????o mais simples de ser feita."
                      " Isolando o 'x', ficamos com a equa????o da seguinte forma:",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.35,
                        child: Image.asset("images/operacoes/equacao_2/equacao2_4.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Agora daremos continuidade dividindo o 81 pelo 9, j?? que o 9 estava multiplicando, ao"
                      " trocar de lado passou a dividir e o 81 que era negativo se tornou positivo. Temos o"
                      " seguinte: ",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.35,
                        child: Image.asset("images/operacoes/equacao_2/equacao2_5.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Agora temos uma novidade que ?? quando alteramos de lado a pot??ncia que ?? aquele 2"
                      " pequeno ao lado do x. Quando alteramos essa pot??ncia de lado, essa pot??ncia passa a"
                      " se tornar uma raiz quadrada. Vejamos como fica:",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.35,
                        child: Image.asset("images/operacoes/equacao_2/equacao2_6.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Agora que temos o n??mero dentro da raiz quadrada, podemos encontrar o valor"
                      " real de 'x'.",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.35,
                        child: Image.asset("images/operacoes/equacao_2/equacao2_7.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Vamos agora para um exemplo de equa????o completa de segundo grau. Para resolver essa"
                      " equa????o iremos precisar utilizar a F??rmula de Bhakara e a F??rmula do Delta. A equa????o"
                      " a ser utilizada ser??:",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.7,
                        child: Image.asset("images/operacoes/equacao_2/equacao2_8.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Precisamos primeiramente identificar as letras nessa equa????o, atrav??s da equa????o que"
                      " foi demonstrada anteriormente ax2 + bx + c = 0. O 'x' ?? o valor desconhecido, o 'a' ??"
                      " representado pelo n??mero 3, o 'b' ?? representado pelo n??mero -9 e o 'c' ?? representado"
                      " pelo n??mero -12. Ap??s encontrar os valores, iremos utilizar a F??rmula de Delta. Veja"
                      " como fica:",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Image.asset("images/operacoes/equacao_2/equacao2_9.png"),
                      )
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * .7,
                        child: Image.asset("images/operacoes/equacao_2/equacao2_17.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Encontramos assim o valor de Delta que ?? 225 e seguimos agora com a F??rmula de Bhaskara"
                      " para a resolu????o final da equa????o de segundo grau. Segue a resolu????o:",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Image.asset("images/operacoes/equacao_2/equacao2_11.png"),
                      )
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.5,
                        child: Image.asset("images/operacoes/equacao_2/equacao2_12.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Utilizando a F??rmula de Bhaskara, iremos encontrar os 2 valores poss??veis de 'x'. O"
                      " primeiro 'x' ?? conhecido como x1 que iremos identificar como x?? e o segundo 'x' ?? o"
                      " x2 e iremos chamar de x??. Note que n??o ?? pot??ncia! ?? apenas a identifica????o que"
                      " iremos fazer nessa F??rmula de Bhaskara.",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Iremos encontrar o valor de x??, utilizando a f??rmula com o sinal de '+'.",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.7,
                        child: Image.asset("images/operacoes/equacao_2/equacao2_13.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Agora utilizando a f??rmula com '-' para, encontrar o valor de x??.",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.7,
                        child: Image.asset("images/operacoes/equacao_2/equacao2_14.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Com isso temos o valor de x??= 4 e x??= -1. Agora podemos conferir se os valores"
                      " encontrados para 'x' correspondem ao resultado da equa????o 3x?? - 9x - 12 = 0. Vamos"
                      " trocar o 'x' pelos valores encontrados, primeiro com x?? que ?? o 4.",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.7,
                        child: Image.asset("images/operacoes/equacao_2/equacao2_15.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Podemos ver que o valor 4 encontrado para x??, corresponde ao resultado da equa????o."
                      " Vamos agora conferir o segundo valor encontrado para x?? que ?? o -1.",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width *.75,
                        child: Image.asset("images/operacoes/equacao_2/equacao2_16.png"),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 25),
                    child: Text(
                      "Vemos que o encontrado para x?? tamb??m corresponde ao resultado da equa????o. Esses"
                      " valores s??o denominados como ra??zes da equa????o.",
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