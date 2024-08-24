import 'package:exemplifica/utils/constants/core_keys.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/view/molecules/row_buttons.dart';
import 'package:exemplifica/view/page/calc_equacao_1_page.dart';
import 'package:exemplifica/view/page/calc_equacao_2_page.dart';
import 'package:exemplifica/view/page/calc_fatorial_page.dart';
import 'package:exemplifica/view/page/calc_juros_compostos_page.dart';
import 'package:exemplifica/view/page/calc_juros_simples_page.dart';
import 'package:exemplifica/view/page/calc_mdc_page.dart';
import 'package:exemplifica/view/page/calc_mmc_page.dart';
import 'package:exemplifica/view/page/calc_porcentagem_page.dart';
import 'package:exemplifica/view/page/calc_regra_de_3_page.dart';
import 'package:exemplifica/view/page/calc_tabuada_page.dart';
import 'package:flutter/material.dart';
import 'package:exemplifica/view/atoms/custom_button.dart';

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
      key: Key(CoreKeys.buttonsGridCalculators),
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
        RowButtons(
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
                  context, MaterialPageRoute(builder: (_) => CalcFatorialPage()));
            },
            height: height,
            width: customButtonWidth,
          ),
        ),
        RowButtons(
          height: height,
          width: rowButtonWidth,
          titleFirst: CoreStrings.titleJurosSimples,
          titleSecond: CoreStrings.titleJurosCompostos,
          onTapFirst: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => CalcJurosSimplesPage()));
          },
          onTapSecond: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => CalcJurosCompostosPage()));
          },
        ),
        Padding(
          padding: const EdgeInsets.all(5),
          child: CustomButton(
            title: CoreStrings.titleMdc,
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => CalcMdcPage()));
            },
            height: height,
            width: customButtonWidth,
          ),
        ),
        RowButtons(
          height: height,
          width: rowButtonWidth,
          titleFirst: CoreStrings.titleMmc,
          titleSecond: CoreStrings.titlePorcentagem,
          onTapFirst: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => CalcMmcPage()));
          },
          onTapSecond: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => CalcPorcentagemPage()));
          },
        ),
        Padding(
          padding: const EdgeInsets.all(5),
          child: CustomButton(
            title: CoreStrings.titleRegraDe3,
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => CalcRegraDe3Page()));
            },
            height: height,
            width: customButtonWidth,
          ),
        ),
      ],
    );
  }
}
