import 'package:exemplifica/screens/equacao_1.dart';
import 'package:exemplifica/screens/equacao_2.dart';
import 'package:exemplifica/screens/fatorial.dart';
import 'package:exemplifica/screens/juros_compostos.dart';
import 'package:exemplifica/screens/juros_simples.dart';
import 'package:exemplifica/screens/mdc.dart';
import 'package:exemplifica/screens/mmc.dart';
import 'package:exemplifica/screens/porcentagem.dart';
import 'package:exemplifica/screens/regra_de_3.dart';
import 'package:exemplifica/screens/tabuada.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:flutter/material.dart';
import 'package:exemplifica/widgets/molecules/row_button.dart';

class ButtonsGrid extends StatelessWidget {
  final double height;
  final double width;
  const ButtonsGrid({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RowButtons(
          height: height,
          width: width,
          titleFirst: CoreStrings.titleEquacao1,
          titleSecond: CoreStrings.titleEquacao2,
          onTapFirst: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => Equacao_1()));
          },
          onTapSecond: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => Equacao_2()));
          },
        ),
        RowButtons(
          height: height,
          width: width,
          titleFirst: CoreStrings.titleFatorial,
          titleSecond: CoreStrings.titleTabuada,
          onTapFirst: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => Fatorial()));
          },
          onTapSecond: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => Tabuada()));
          },
        ),
        RowButtons(
          height: height,
          width: width,
          titleFirst: CoreStrings.titleJurosCompostos,
          titleSecond: CoreStrings.titleJurosSimples,
          onTapFirst: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => JurosCompostos()));
          },
          onTapSecond: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => JurosSimples()));
          },
        ),
        RowButtons(
          height: height,
          width: width,
          titleFirst: CoreStrings.titleMmc,
          titleSecond: CoreStrings.titleMdc,
          onTapFirst: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) => Mmc()));
          },
          onTapSecond: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) => Mdc()));
          },
        ),
        RowButtons(
          height: height,
          width: width,
          titleFirst: CoreStrings.titlePorcentagem,
          titleSecond: CoreStrings.titleRegraDe3,
          onTapFirst: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => Porcentagem()));
          },
          onTapSecond: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => RegraDe3()));
          },
        ),
      ],
    );
  }
}
