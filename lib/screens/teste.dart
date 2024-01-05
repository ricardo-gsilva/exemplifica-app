import 'package:exemplifica_git/constants/core_strings.dart';
import 'package:exemplifica_git/screens/calculadoras.dart';
import 'package:exemplifica_git/screens/components/row_cards.dart';
import 'package:exemplifica_git/person_icons.dart';
import 'package:exemplifica_git/screens/equacao_1.dart';
import 'package:exemplifica_git/screens/equacao_2.dart';
import 'package:exemplifica_git/screens/fatorial.dart';
import 'package:exemplifica_git/screens/funcoes.dart';
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
            backgroundColor: Colors.lightBlue,
            elevation: 2,
            title: Image.asset(
              'images/exemplo_3.png',
              height: 50,
            )),
      ),
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(                      
                      height: height * 0.20,
                      width: MediaQuery.of(context).size.width * 0.50,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context, MaterialPageRoute(builder: (_) => Calculadoras())
                          );
                        },
                        child: Card(
                          color: Colors.lightBlue.shade400,
                          child: Center(
                            child: ListTile(
                              title: Icon(
                                color: Colors.black,
                                size: 50,
                                Person.calc,
                              ),
                              subtitle: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Calculadoras',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 18,
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
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: InkWell(
                        child: Card(
                          color: Colors.lightBlue.shade400,
                          child: Center(
                            child: ListTile(
                              title: Icon(
                                  color: Colors.black,
                                  size: 50,
                                  Person.attention),
                              subtitle: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Regras Básicas',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 18,
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
                RowOperations(
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
                RowOperations(
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
                RowOperations(
                  height: height,
                  titleFirst: 'Juros Compostos',
                  titleSecond: 'Juros Simples',
                  onTapFirst: null,
                  onTapSecond: null,
                ),
                RowOperations(
                  height: height,
                  titleFirst: 'M.M.C',
                  titleSecond: 'M.D.C',
                  onTapFirst: null,
                  onTapSecond: null,
                ),
                RowOperations(
                  height: height,
                  titleFirst: 'Porcentagem',
                  titleSecond: 'Regra de 3',
                  onTapFirst: null,
                  onTapSecond: null,
                ),
                SizedBox(
                  height: height * 0.10,
                  width: MediaQuery.of(context).size.width,
                  child: InkWell(
                    child: Card(
                      color: Colors.lightBlue.shade400,
                      child: Center(
                        child: Text(
                          'Tabuada',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: SizedBox(height: MediaQuery.of(context).size.height * 0.1,),
    );
  }
}