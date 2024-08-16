import 'package:exemplifica/screens/calculadoras/calc_juros_compostos.dart';
import 'package:exemplifica/screens/calculadoras/calc_juros_simples.dart';
import 'package:exemplifica/screens/calculadoras/calc_mmc.dart';
import 'package:exemplifica/screens/calculadoras/calc_porcentagem.dart';
import 'package:exemplifica/screens/calculadoras/calc_regra_de_3.dart';
import 'package:exemplifica/screens/calculadoras/cald_fatorial.dart';
import 'package:exemplifica/screens/calculadoras/cald_mdc.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/widgets/page/calc_equacao_1_page.dart';
import 'package:exemplifica/widgets/page/calc_equacao_2_page.dart';
import 'package:exemplifica/widgets/page/calc_tabuada_page.dart';
import 'package:flutter/material.dart';

import 'package:exemplifica/widgets/atoms/custom_button.dart';
import 'package:exemplifica/widgets/molecules/row_button_calculators.dart';

class ButtonsGridCalculators extends StatelessWidget {
  final double height;
  final double width;

  const ButtonsGridCalculators({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double customButtonWidth = width;
    double rowButtonWidth = width * 0.47;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: CustomButton(
            title: CoreStrings.titleTabuada,
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => CalcTabuadaPage()));
            },
            height: height,
            width: customButtonWidth,
          ),
        ),
        RowButtonCalculators(
          height: height,
          width: rowButtonWidth,
          titleFirst: CoreStrings.titleEquacao1,
          titleSecond: CoreStrings.titleEquacao2,
          onTapFirst: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => CalcEquacao1Page()));
          },
          onTapSecond: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => CalcEquacao2Page()));
          },
        ),
        Padding(
          padding: const EdgeInsets.all(5),
          child: CustomButton(
            title: CoreStrings.titleFatorial,
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => CalcFatorial()));
            },
            height: height,
            width: customButtonWidth,
          ),
        ),
        RowButtonCalculators(
          height: height,
          width: rowButtonWidth,
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
        ),
        Padding(
          padding: const EdgeInsets.all(5),
          child: CustomButton(
            title: CoreStrings.titleMdc,
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => CalcMdc()));
            },
            height: height,
            width: customButtonWidth,
          ),
        ),
        RowButtonCalculators(
          height: height,
          width: rowButtonWidth,
          titleFirst: CoreStrings.titleMmc,
          titleSecond: CoreStrings.titlePorcentagem,
          onTapFirst: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => CalcMmc()));
          },
          onTapSecond: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => CalcPorcentagem()));
          },
        ),
        Padding(
          padding: const EdgeInsets.all(5),
          child: CustomButton(
            title: CoreStrings.titleRegraDe3,
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => CalcRegraDe3()));
            },
            height: height,
            width: customButtonWidth,
          ),
        ),
      ],
    );
  }
}
