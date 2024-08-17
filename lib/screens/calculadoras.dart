import 'package:exemplifica/utils/constants/core_colors.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/screens/calculadoras/calc_equacao_1.dart';
import 'package:exemplifica/screens/calculadoras/calc_equacao_2.dart';
import 'package:exemplifica/screens/calculadoras/calc_juros_compostos.dart';
import 'package:exemplifica/screens/calculadoras/calc_juros_simples.dart';
import 'package:exemplifica/screens/calculadoras/calc_mmc.dart';
import 'package:exemplifica/screens/calculadoras/calc_porcentagem.dart';
import 'package:exemplifica/screens/calculadoras/calc_regra_de_3.dart';
import 'package:exemplifica/screens/calculadoras/cald_fatorial.dart';
import 'package:exemplifica/screens/calculadoras/cald_mdc.dart';
import 'package:exemplifica/screens/calculadoras/cald_tabuada.dart';
import 'package:exemplifica/components/row_buttons.dart';
import 'package:exemplifica/widgets/button_custom.dart';
import 'package:flutter/material.dart';

class Calculadoras extends StatefulWidget {
  @override
  _CalculadorasState createState() => _CalculadorasState();
}

class _CalculadorasState extends State<Calculadoras> {
  double height = 0;
  double width = 0;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width * 0.47;
    height = MediaQuery.of(context).size.height * 0.1;
    return Scaffold(
        backgroundColor: CoreColors.colorBackground,
        appBar: AppBar(
          backgroundColor: CoreColors.appBarColor,
          centerTitle: true,
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: Icon(
              Icons.reply,
              color: CoreColors.textPrimary,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            CoreStrings.titleCalculadoras,
            style: TextStyle(color: CoreColors.textPrimary),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
              child: ButtonBase(
                height: height,
                title: CoreStrings.titleTabuada,
                onTap: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (_) => CalcTabuada()));
                },
              ),
            ),
            RowButtons1(
              titleFirst: CoreStrings.titleEquacao1,
              titleSecond: CoreStrings.titleEquacao2,
              onTapFirst: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => CalcEquacao1()));
              },
              onTapSecond: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => CalcEquacao2()));
              },
              height: height,
              width: width,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: ButtonBase(
                height: height,
                title: CoreStrings.titleFatorial,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => CalcFatorial()));
                },
              ),
            ),
            RowButtons1(
              titleFirst: CoreStrings.titleJurosSimples,
              titleSecond: CoreStrings.titleJurosCompostos,
              onTapFirst: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => CalcJurosS()));
              },
              onTapSecond: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => CalcJurosC()));
              },
              height: height,
              width: width,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: ButtonBase(
                height: height,
                title: CoreStrings.titleMdc,
                onTap: () {
                // Navigator.push(
                //   context, MaterialPageRoute(builder: (_) => CalcMdc()));
                },
              ),
            ),
            RowButtons1(
              titleFirst: CoreStrings.titleMmc,
              titleSecond: CoreStrings.titlePorcentagem,
              onTapFirst: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => CalcMmc()));
              },
              onTapSecond: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => CalcPorcentagem()));
              },
              height: height,
              width: width,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: ButtonBase(
                height: height,
                title: CoreStrings.titleRegraDe3,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => CalcRegraDe3()));
                },
              ),
            ),
          ]),
        ),
      );
  }
}
