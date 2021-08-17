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
                      "A equação do segundo grau, também chamada de equação quadrática, é representada por:",
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
                      "Em uma equação do 2º grau temos o 'x' como o valor desconhecido, as letras a, b e c"
                      " são conhecidos como coeficientes da equação. Esses coeficientes são números reais,"
                      " com o coeficiente 'a' sendo sempre diferente de zero, pois do contrário passa a ser"
                      " uma equação do 1º grau. Para resolver uma equação de segundo grau, precisamos encontrar"
                      " os valores reais de 'x', esses valores tornam a equação verdadeira. Esses valores são"
                      " conhecidos como raízes da equação, tendo em uma equação de segundo grau duas raízes"
                      " reais.",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Cabe ressaltar que existem dois tipos de equações de segundo grau. São as equações"
                      " completas e as incompletas! Nas equações completas todas as letras além do 'a', ou"
                      " seja, 'b' e 'c' também são diferentes de 0. Já na equação incompleta, tanto 'b' ou" 
                      " 'c' podem ser iguais a 0, ou até mesmo os dois podem ser iguais a 0.",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Vamos ao primeiro exemplo que será de uma equação incompleta. A equação a ser resolvida"
                      " é:",
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
                      "Como já informado, se trata de uma equação incompleta de segundo grau, o 'b' = 0. Neste"
                      " tipo de equação podemos isolar o 'x', tornando a resolução mais simples de ser feita."
                      " Isolando o 'x', ficamos com a equação da seguinte forma:",
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
                      "Agora daremos continuidade dividindo o 81 pelo 9, já que o 9 estava multiplicando, ao"
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
                      "Agora temos uma novidade que é quando alteramos de lado a potência que é aquele 2"
                      " pequeno ao lado do x. Quando alteramos essa potência de lado, essa potência passa a"
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
                      "Agora que temos o número dentro da raiz quadrada, podemos encontrar o valor"
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
                      "Vamos agora para um exemplo de equação completa de segundo grau. Para resolver essa"
                      " equação iremos precisar utilizar a Fórmula de Bhakara e a Fórmula do Delta. A equação"
                      " a ser utilizada será:",
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
                      "Precisamos primeiramente identificar as letras nessa equação, através da equação que"
                      " foi demonstrada anteriormente ax2 + bx + c = 0. O 'x' é o valor desconhecido, o 'a' é"
                      " representado pelo número 3, o 'b' é representado pelo número -9 e o 'c' é representado"
                      " pelo número -12. Após encontrar os valores, iremos utilizar a Fórmula de Delta. Veja"
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
                      "Encontramos assim o valor de Delta que é 225 e seguimos agora com a Fórmula de Bhaskara"
                      " para a resolução final da equação de segundo grau. Segue a resolução:",
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
                      "Utilizando a Fórmula de Bhaskara, iremos encontrar os 2 valores possíveis de 'x'. O"
                      " primeiro 'x' é conhecido como x1 que iremos identificar como x¹ e o segundo 'x' é o"
                      " x2 e iremos chamar de x². Note que não é potência! É apenas a identificação que"
                      " iremos fazer nessa Fórmula de Bhaskara.",
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Iremos encontrar o valor de x¹, utilizando a fórmula com o sinal de '+'.",
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
                      "Agora utilizando a fórmula com '-' para, encontrar o valor de x².",
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
                      "Com isso temos o valor de x¹= 4 e x²= -1. Agora podemos conferir se os valores"
                      " encontrados para 'x' correspondem ao resultado da equação 3x² - 9x - 12 = 0. Vamos"
                      " trocar o 'x' pelos valores encontrados, primeiro com x¹ que é o 4.",
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
                      "Podemos ver que o valor 4 encontrado para x¹, corresponde ao resultado da equação."
                      " Vamos agora conferir o segundo valor encontrado para x² que é o -1.",
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
                      "Vemos que o encontrado para x² também corresponde ao resultado da equação. Esses"
                      " valores são denominados como raízes da equação.",
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