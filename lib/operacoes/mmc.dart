import 'package:exemplifica_git/calculadoras/calc_mmc.dart';
import 'package:exemplifica_git/components/drawer_comp/drawer_page.dart';
import 'package:exemplifica_git/person_icons.dart';
import 'package:flutter/material.dart';

class Mmc extends StatefulWidget {
  @override
  _MmcState createState() => _MmcState();
}

class _MmcState extends State<Mmc> {

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
                                => CalcMmc()
                            )
                        );
                      },
                    )
                  ],
                ),
                drawer: DrawerPage(),
                backgroundColor: Colors.transparent,
                body: SingleChildScrollView(
                  child: Column(children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Image.asset(
                            "images/operacoes/mmc/mmc_1.png"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        "MMC significa 'm??nimo m??ltiplo comum' e corresponde ao menor n??mero inteiro positivo,"
                        " diferente de zero que ?? m??ltiplo ao mesmo tempo de dois ou mais n??meros. Para saber"
                        " se um n??mero ?? m??ltiplo de um outro, ?? necess??rio descobrir se um desses n??meros ??"
                        " divis??vel pelo outro. Veja um exemplo simples, o n??mero 9 ?? m??ltiplo de 3, pois ele"
                        " tamb??m ?? divis??vel por 3.",
                        style: TextStyle(fontSize: 24.0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        "Para encontrar o MMC de 2 n??meros, pode ser usada a tabuada desse n??meros. O MMC de"
                        " 2 e 5 pode ser encontrado na pr??pria tabuada desses mesmos n??meros. Na tabuada do 2,"
                        " voc?? ir?? encontrar 2 x 5 = 10 e na tabuada do 5, iremos encontrar 5 x 2 = 10. Logo"
                        " podemos definir que o m??nimo m??ltiplo comum (MMC) de 2 e 5 ?? o n??mero 10. Mas essa"
                        " ?? uma maneira que s?? pode ser utilizada com valores pequenos, n??o funcionando bem"
                        " com n??meros grandes. Vamos tentar encontrar o MMC de 30 e 22. Para conseguir"
                        " encontrar o MMC deles, iremos colocar os valores um ao lado do outro e fazer uma"
                        " divis??o, at?? que se chegue ao menor valor da divis??o deles que ?? o 1. Veja como ??"
                        " feito:",
                        style: TextStyle(fontSize: 24.0),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width *.9,
                          child: Image.asset("images/operacoes/mmc/mmc_2.png"),
                        )
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        "N??o ?? complicado de se resolver. Primeiramente ?? feito a divis??o dos valores por 2,"
                        " no pr??ximo passo n??o foi poss??vel dividir 11 e 15 por 2, ent??o seguimos para o"
                        " pr??ximo n??mero que ?? o 3. Como ?? poss??vel dividir o 15 por 3, ent??o conseguimos"
                        " aplicar esse valor. Mas caso nenhum fosse divis??vel por 3, ir??amos para o pr??ximo"
                        " n??mero que seria 4 ou at?? outro n??mero que fosse div??sivel. Como foi poss??vel"
                        " ver, essa regra foi aplicada at?? que os valores finais fossem 1 para os dois n??meros"
                        " iniciais. Ent??os pegamos os valores que foram usados para a divis??o e fazemos a"
                        " multiplica????o de todos eles, assim encontramos o valor final de 220 que ?? o MMC dos"
                        " n??meros 22 e 30.",
                        style: TextStyle(fontSize: 24.0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        "Tamb??m ?? preciso lembrar que temos m??nimo m??ltiplo comum com fra????es, para que seja"
                        " poss??vel somar ou subtrair fra????es ?? preciso que os denominadores sejam iguais."
                        " Ent??o iremos calcular o MMC entre os denominadores e ent??o teremos o novo"
                        " denominador das fra????es. Veja o exemplo:",
                        style: TextStyle(fontSize: 24.0),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width *.45,
                          child: Image.asset("images/operacoes/mmc/mmc_3.png"),
                        )
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        "Como ?? poss??vel ver os denominadores 4 e 9 s??o diferentes e precisamos calcular o MMC"
                        " deles para dar continuidade. Iremos fatorar da seguinte forma:",
                        style: TextStyle(fontSize: 24.0),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width *.9,
                          child: Image.asset("images/operacoes/mmc/mmc_4.png"),
                        )
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        "Agora que temos o MMC desses valores, seguimos da seguinte forma:",
                        style: TextStyle(fontSize: 24.0),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width *.45,
                          child: Image.asset("images/operacoes/mmc/mmc_5.png"),
                        )
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 25),
                      child: Text(
                        "Pegamos o valor do numerador que ?? o 3 e multiplicamos pelos denominadores iniciais"
                        " Teremos os valores 12 e 27, ent??o faremos as somas desses valores e iremos dividir"
                        " pelo novo denominador encontrado que ?? o 36. Teremos 39/36 que pode ser simplificado"
                        " por 3 j?? que tanto o valor 39, quanto o valor 36 podem ser divididos por 3 e teremos"
                        " um valor final de 13/12. A princ??pio pode parecer dif??cil, mas com um pouco de"
                        " pr??tica logo fica simples de ser compreendido.",
                        style: TextStyle(fontSize: 24.0),
                      ),
                    ),
                  ]),
                )
            )
        )
    );
  }
}