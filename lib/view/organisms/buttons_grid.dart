import 'package:exemplifica/utils/constants/core_keys.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/utils/content_list/content_list_equacao_1.dart';
import 'package:exemplifica/utils/content_list/content_list_equacao_2.dart';
import 'package:exemplifica/utils/content_list/content_list_fatorial.dart';
import 'package:exemplifica/utils/content_list/content_list_juros_compostos.dart';
import 'package:exemplifica/utils/content_list/content_list_juros_simples.dart';
import 'package:exemplifica/utils/content_list/content_list_mdc.dart';
import 'package:exemplifica/utils/content_list/content_list_mmc.dart';
import 'package:exemplifica/utils/content_list/content_list_porcentagem.dart';
import 'package:exemplifica/utils/content_list/content_list_regra_de_3.dart';
import 'package:exemplifica/utils/content_list/content_list_tabuada.dart';
import 'package:exemplifica/utils/enum_calculator.dart';
import 'package:exemplifica/utils/person_icons.dart';
import 'package:exemplifica/view/page/calculator_page.dart';
import 'package:exemplifica/view/page/content_page.dart';
import 'package:flutter/material.dart';
import 'package:exemplifica/view/molecules/row_buttons.dart';

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
      key: Key(CoreKeys.buttonsGrid),
      children: [
        RowButtons(
          height: height,
          width: width,
          titleFirst: CoreStrings.titleEquacao1,
          titleSecond: CoreStrings.titleEquacao2,
          onTapFirst: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => ContentPage(
                  contentList: ContentListEquacao1.contentListEquacao1,
                  route: CalculatorPage(
                    calculator: CalculatorEnum.equacao_1,
                    titleAppBar: CoreStrings.titleEquacao1,
                    descriptionText: CoreStrings.text1_CalcEquacao1,
                    formulaText: CoreStrings.text2_CalcEquacao1,
                  ),
                  icon: Person.calc,
                  titleAppBar: CoreStrings.titleEquacao1,
                ),
              ),
            );
          },
          onTapSecond: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => ContentPage(
                  contentList: ContentListEquacao2.contentListEquacao2,
                  route: CalculatorPage(
                    calculator: CalculatorEnum.equacao_2,
                    titleAppBar: CoreStrings.titleEquacao2,
                    descriptionText: CoreStrings.text1_CalcEquacao2,
                    formulaText: CoreStrings.text2_CalcEquacao2,
                  ),
                  icon: Person.calc,
                  titleAppBar: CoreStrings.titleEquacao2,
                ),
              ),
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
              context,
              MaterialPageRoute(
                builder: (_) => ContentPage(
                  contentList: ContentListFatorial.contentListFatorial,
                  route: CalculatorPage(
                    calculator: CalculatorEnum.fatorial,
                    titleAppBar: CoreStrings.titleFatorial,
                    descriptionText: CoreStrings.text1_CalcFatorial,
                  ),
                  icon: Person.calc,
                  titleAppBar: CoreStrings.titleFatorial,
                ),
              ),
            );
          },
          onTapSecond: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => ContentPage(
                  contentList: ContentListTabuada.contentListTabuada,
                  route: CalculatorPage(
                    calculator: CalculatorEnum.tabuada,
                    titleAppBar: CoreStrings.titleTabuada,
                    descriptionText: CoreStrings.text1_CalcTabuada,
                  ),
                  icon: Person.calc,
                  titleAppBar: CoreStrings.titleTabuada,
                ),
              ),
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
              context,
              MaterialPageRoute(
                builder: (_) => ContentPage(
                  contentList: ContentListJurosCompostos.contentListJurosCompostos,
                  route: CalculatorPage(
                    calculator: CalculatorEnum.jurosCompostos,
                    titleAppBar: CoreStrings.titleJurosCompostos,
                    descriptionText: CoreStrings.text1_CalcJurosCompostos,
                    formulaText: CoreStrings.text2_CalcJurosCompostos,
                  ),
                  icon: Person.calc,
                  titleAppBar: CoreStrings.titleJurosCompostos,
                ),
              ),
            );
          },
          onTapSecond: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => ContentPage(
                  contentList: ContentListJurosSimples.contentListJurosSimples,
                  route: CalculatorPage(
                    calculator: CalculatorEnum.jurosSimples,
                    titleAppBar: CoreStrings.titleJurosSimples,
                    descriptionText: CoreStrings.text1_CalcJurosSimples,
                  ),
                  icon: Person.calc,
                  titleAppBar: CoreStrings.titleJurosSimples,
                ),
              ),
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
              context,
              MaterialPageRoute(
                builder: (_) => ContentPage(
                  contentList: ContentListMmc.contentListMmc,
                  route: CalculatorPage(
                    calculator: CalculatorEnum.mmc,
                    titleAppBar: CoreStrings.titleMmc,
                    descriptionText: CoreStrings.text1_CalcMmc,
                  ),
                  icon: Person.calc,
                  titleAppBar: CoreStrings.titleMmc,
                ),
              ),
            );
          },
          onTapSecond: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => ContentPage(
                  contentList: ContentListMdc.contentListMdc,
                  route: CalculatorPage(
                    calculator: CalculatorEnum.mdc,
                    titleAppBar: CoreStrings.titleMdc,
                    descriptionText: CoreStrings.text1_CalcMdc,
                  ),
                  icon: Person.calc,
                  titleAppBar: CoreStrings.titleMdc,
                ),
              ),
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
              context,
              MaterialPageRoute(
                builder: (_) => ContentPage(
                  contentList: ContentListPorcentagem.contentListPorcentagem,
                  route: CalculatorPage(
                    calculator: CalculatorEnum.porcentagem,
                    titleAppBar: CoreStrings.titlePorcentagem,
                    descriptionText: CoreStrings.text1_CalcPorcentagem,
                  ),
                  icon: Person.calc,
                  titleAppBar: CoreStrings.titlePorcentagem,
                ),
              ),
            );
          },
          onTapSecond: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => ContentPage(
                  contentList: ContentListRegraDe3.contentListRegraDe3,
                  route: CalculatorPage(
                    calculator: CalculatorEnum.regraDe3,
                    titleAppBar: CoreStrings.titleRegraDe3,
                    descriptionText: CoreStrings.text1_CalcRegraDe3,
                  ),
                  icon: Person.calc,
                  titleAppBar: CoreStrings.titleRegraDe3,
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
