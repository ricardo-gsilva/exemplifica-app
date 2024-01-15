import 'package:exemplifica_git/constants/core_colors.dart';
import 'package:exemplifica_git/constants/core_strings.dart';
import 'package:exemplifica_git/screens/calculadoras.dart';
import 'package:exemplifica_git/screens/components/row_buttons.dart';
import 'package:exemplifica_git/person_icons.dart';
import 'package:exemplifica_git/screens/equacao_1.dart';
import 'package:exemplifica_git/screens/equacao_2.dart';
import 'package:exemplifica_git/screens/fatorial.dart';
import 'package:exemplifica_git/screens/juros_compostos.dart';
import 'package:exemplifica_git/screens/juros_simples.dart';
import 'package:exemplifica_git/screens/mdc.dart';
import 'package:exemplifica_git/screens/mmc.dart';
import 'package:exemplifica_git/screens/porcentagem.dart';
import 'package:exemplifica_git/screens/regra_de_3.dart';
import 'package:exemplifica_git/screens/regras_basicas.dart';
import 'package:exemplifica_git/screens/tabuada.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double height = 0.0;
  double width = 0.0;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height * 0.1;
    width = MediaQuery.of(context).size.width * 0.47;
    return Scaffold(
      backgroundColor: CoreColors.colorBackground,
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
              padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
              child: Column(
                children: [                  
                  Row(
                    children: [
                      SizedBox(                      
                        height: height * 2.2,
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
                                  color: CoreColors.textPrimary,
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
                                      color: CoreColors.textPrimary,
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
                        height: height * 2.2,
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
                                    color: CoreColors.textPrimary,
                                    size: 45,
                                    Person.attention),
                                subtitle: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Regras Básicas',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: CoreColors.textPrimary,
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
                  RowButtons(
                    height: height,
                    width: width,
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
                  RowButtons(
                    height: height,
                    width: width,
                    titleFirst: CoreStrings.titleFatorial,
                    titleSecond: CoreStrings.titleTabuada,
                    onTapFirst: () {
                      Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Fatorial())
                      );
                    },
                    onTapSecond: () {
                      Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Tabuada())
                      );
                    },
                  ),
                  RowButtons(
                    height: height,
                    width: width,
                    titleFirst: CoreStrings.titleJurosCompostos,
                    titleSecond: CoreStrings.titleJurosSimples,
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
                  RowButtons(
                    height: height,
                    width: width,
                    titleFirst: CoreStrings.titleMmc,
                    titleSecond: CoreStrings.titleMdc,
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
                  RowButtons(
                    height: height,
                    width: width,
                    titleFirst: CoreStrings.titlePorcentagem,
                    titleSecond: CoreStrings.titleRegraDe3,
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
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(color: CoreColors.textPrimary, height: MediaQuery.of(context).size.height * 0.1),
    );
  }
}
