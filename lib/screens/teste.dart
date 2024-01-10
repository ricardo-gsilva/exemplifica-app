import 'package:exemplifica_git/constants/core_strings.dart';
import 'package:exemplifica_git/screens/calculadoras.dart';
import 'package:exemplifica_git/screens/components/row_cards.dart';
import 'package:exemplifica_git/person_icons.dart';
import 'package:exemplifica_git/screens/equacao_1.dart';
import 'package:exemplifica_git/screens/equacao_2.dart';
import 'package:exemplifica_git/screens/fatorial.dart';
import 'package:exemplifica_git/screens/funcoes.dart';
import 'package:exemplifica_git/screens/juros_compostos.dart';
import 'package:exemplifica_git/screens/juros_simples.dart';
import 'package:exemplifica_git/screens/mdc.dart';
import 'package:exemplifica_git/screens/mmc.dart';
import 'package:exemplifica_git/screens/porcentagem.dart';
import 'package:exemplifica_git/screens/regra_de_3.dart';
import 'package:exemplifica_git/screens/regras_basicas.dart';
import 'package:exemplifica_git/screens/tabuada.dart';
import 'package:flutter/material.dart';

class Teste extends StatefulWidget {
  const Teste({super.key});

  @override
  State<Teste> createState() => _TesteState();
}

class _TesteState extends State<Teste> {
  double height = 0.0;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade50,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
            backgroundColor: Colors.lightBlue.shade700,
            elevation: 2,
            centerTitle: true,
            title: Image.asset(
              'images/exemplo_3.png',
              height: 45,
            )),
      ),
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [                  
                  Row(
                    children: [
                      SizedBox(                      
                        height: height * 0.20,
                        width: MediaQuery.of(context).size.width * 0.47,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context, MaterialPageRoute(builder: (_) => Calculadoras())
                            );
                          },
                          child: Card(
                            color: Colors.lightBlue.shade200,
                            child: Center(
                              child: ListTile(
                                title: Icon(
                                  color: Colors.black,
                                  size: 45,
                                  Person.calc,
                                ),
                                subtitle: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Calculadoras',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),                    
                      SizedBox(                      
                        height: height * 0.20,
                        width: MediaQuery.of(context).size.width * 0.47,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context, MaterialPageRoute(builder: (_) => RegrasBasicas())
                            );
                          },
                          child: Card(
                            color: Colors.lightBlue.shade200,
                            child: Center(
                              child: ListTile(
                                title: Icon(
                                    color: Colors.black,
                                    size: 45,
                                    Person.attention),
                                subtitle: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Regras Básicas',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  RowCards(
                    height: height,
                    titleFirst: CoreStrings.titleEquacao1,
                    titleSecond: CoreStrings.titleEquacao2,
                    onTapFirst: () {
                      Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Equacao_1())
                      );
                    },
                    onTapSecond: () {
                      Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Equacao_2())
                      );
                    },
                  ),
                  RowCards(
                    height: height,
                    titleFirst: 'Fatorial',
                    titleSecond: 'Funções',
                    onTapFirst: () {
                      Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Fatorial())
                      );
                    },
                    onTapSecond: () {
                      Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Funcoes())
                      );
                    },
                  ),
                  RowCards(
                    height: height,
                    titleFirst: 'Juros Compostos',
                    titleSecond: 'Juros Simples',
                    onTapFirst: () {
                      Navigator.push(
                        context, MaterialPageRoute(builder: (_) => JurosCompostos())
                      );
                    },
                    onTapSecond: () {
                      Navigator.push(
                        context, MaterialPageRoute(builder: (_) => JurosSimples())
                      );
                    },
                  ),
                  RowCards(
                    height: height,
                    titleFirst: 'M.M.C',
                    titleSecond: 'M.D.C',
                    onTapFirst: () {
                      Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Mmc())
                      );
                    },
                    onTapSecond: () {
                      Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Mdc())
                      );
                    },
                  ),
                  RowCards(
                    height: height,
                    titleFirst: 'Porcentagem',
                    titleSecond: 'Regra de 3',
                    onTapFirst: () {
                      Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Porcentagem())
                      );
                    },
                    onTapSecond: () {
                      Navigator.push(
                        context, MaterialPageRoute(builder: (_) => RegraDe3())
                      );
                    },
                  ),
                  SizedBox(
                    height: height * 0.10,
                    width: MediaQuery.of(context).size.width,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context, MaterialPageRoute(builder: (_) => Tabuada())
                        );
                      },
                      child: Card(
                        color: Colors.lightBlue.shade200,
                        child: Center(
                          child: Text(
                            'Tabuada',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: SizedBox(height: MediaQuery.of(context).size.height * 0.1,),
    );
  }
}
