import 'package:exemplifica/screens/porcentagem.dart';
import 'package:exemplifica/screens/regra_de_3.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/widgets/page/equacao_1_page.dart';
import 'package:exemplifica/widgets/page/equacao_2_page.dart';
import 'package:exemplifica/widgets/page/fatorial_page.dart';
import 'package:exemplifica/widgets/page/juros_compostos_page.dart';
import 'package:exemplifica/widgets/page/juros_simples_page.dart';
import 'package:exemplifica/widgets/page/mdc_page.dart';
import 'package:exemplifica/widgets/page/mmc_page.dart';
import 'package:exemplifica/widgets/page/tabuada_page.dart';
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
                context, MaterialPageRoute(builder: (_) => Equacao1Page()));
          },
          onTapSecond: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => Equacao2Page()));
          },
        ),
        RowButtons(
          height: height,
          width: width,
          titleFirst: CoreStrings.titleFatorial,
          titleSecond: CoreStrings.titleTabuada,
          onTapFirst: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => FatorialPage()));
          },
          onTapSecond: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => TabuadaPage()));
          },
        ),
        RowButtons(
          height: height,
          width: width,
          titleFirst: CoreStrings.titleJurosCompostos,
          titleSecond: CoreStrings.titleJurosSimples,
          onTapFirst: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => JurosCompostosPage()));
          },
          onTapSecond: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => JurosSimplesPage()));
          },
        ),
        RowButtons(
          height: height,
          width: width,
          titleFirst: CoreStrings.titleMmc,
          titleSecond: CoreStrings.titleMdc,
          onTapFirst: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) => MmcPage()));
          },
          onTapSecond: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) => MdcPage()));
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
