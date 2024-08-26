import 'package:exemplifica/utils/constants/core_keys.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/utils/enum_calculator.dart';
import 'package:exemplifica/view/molecules/row_buttons.dart';
import 'package:exemplifica/view/page/calculator_page.dart';
import 'package:flutter/material.dart';
import 'package:exemplifica/view/atoms/custom_button.dart';

class ButtonsGridCalculators extends StatefulWidget {
  final double height;
  final double width;

  const ButtonsGridCalculators({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  State<ButtonsGridCalculators> createState() => _ButtonsGridCalculatorsState();
}

class _ButtonsGridCalculatorsState extends State<ButtonsGridCalculators> {
  @override
  Widget build(BuildContext context) {
    double customButtonWidth = widget.width;
    double rowButtonWidth = widget.width * 0.47;
    return Column(
      key: Key(CoreKeys.buttonsGridCalculators),
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: CustomButton(
            title: CoreStrings.titleTabuada,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                  builder: (_) => CalculatorPage(
                    calculator: CalculatorEnum.tabuada,
                    titleAppBar: CoreStrings.titleTabuada,
                    descriptionText: CoreStrings.text1_CalcTabuada,
                  ),
                ),
              );
            },
            height: widget.height,
            width: customButtonWidth,
          ),
        ),
        RowButtons(
          height: widget.height,
          width: rowButtonWidth,
          titleFirst: CoreStrings.titleEquacao1,
          titleSecond: CoreStrings.titleEquacao2,
          onTapFirst: () {
            Navigator.push(context, MaterialPageRoute(
                builder: (_) => CalculatorPage(
                  calculator: CalculatorEnum.equacao_1,
                  titleAppBar: CoreStrings.titleEquacao1,
                  descriptionText: CoreStrings.text1_CalcEquacao1,
                  formulaText: CoreStrings.text2_CalcEquacao1,
                ),
              ),
            );
          },
          onTapSecond: () {
            Navigator.push(context, MaterialPageRoute(
                builder: (_) => CalculatorPage(
                  calculator: CalculatorEnum.equacao_2,
                  titleAppBar: CoreStrings.titleEquacao2,
                  descriptionText: CoreStrings.text1_CalcEquacao2,
                  formulaText: CoreStrings.text2_CalcEquacao2,
                ),
              ),
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.all(5),
          child: CustomButton(
            title: CoreStrings.titleFatorial,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                  builder: (_) => CalculatorPage(
                    calculator: CalculatorEnum.fatorial,
                    titleAppBar: CoreStrings.titleFatorial,
                    descriptionText: CoreStrings.text1_CalcFatorial,
                  ),
                ),
              );
            },
            height: widget.height,
            width: customButtonWidth,
          ),
        ),
        RowButtons(
          height: widget.height,
          width: rowButtonWidth,
          titleFirst: CoreStrings.titleJurosSimples,
          titleSecond: CoreStrings.titleJurosCompostos,
          onTapFirst: () {
            Navigator.push(context, MaterialPageRoute(
                builder: (_) => CalculatorPage(
                  calculator: CalculatorEnum.jurosSimples,
                  titleAppBar: CoreStrings.titleJurosSimples,
                  descriptionText: CoreStrings.text1_CalcJurosSimples,
                ),
              ),
            );
          },
          onTapSecond: () {
            Navigator.push(context, MaterialPageRoute(
                builder: (_) => CalculatorPage(
                  calculator: CalculatorEnum.jurosCompostos,
                  titleAppBar: CoreStrings.titleJurosCompostos,
                  descriptionText: CoreStrings.text1_CalcJurosCompostos,
                  formulaText: CoreStrings.text2_CalcJurosCompostos,
                ),
              ),
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.all(5),
          child: CustomButton(
            title: CoreStrings.titleMdc,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                  builder: (_) => CalculatorPage(
                    calculator: CalculatorEnum.mdc,
                    titleAppBar: CoreStrings.titleMdc,
                    descriptionText: CoreStrings.text1_CalcMdc,
                  ),
                ),
              );
            },
            height: widget.height,
            width: customButtonWidth,
          ),
        ),
        RowButtons(
          height: widget.height,
          width: rowButtonWidth,
          titleFirst: CoreStrings.titleMmc,
          titleSecond: CoreStrings.titlePorcentagem,
          onTapFirst: () {
            Navigator.push(context, MaterialPageRoute(
                builder: (_) => CalculatorPage(
                  calculator: CalculatorEnum.mmc,
                  titleAppBar: CoreStrings.titleMmc,
                  descriptionText: CoreStrings.text1_CalcMmc,
                ),
              ),
            );
          },
          onTapSecond: () {
            Navigator.push(context, MaterialPageRoute(
                builder: (_) => CalculatorPage(
                  calculator: CalculatorEnum.porcentagem,
                  titleAppBar: CoreStrings.titlePorcentagem,
                  descriptionText: CoreStrings.text1_CalcPorcentagem,
                ),
              ),
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.all(5),
          child: CustomButton(
            title: CoreStrings.titleRegraDe3,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                  builder: (_) => CalculatorPage(
                    calculator: CalculatorEnum.regraDe3,
                    titleAppBar: CoreStrings.titleRegraDe3,
                    descriptionText: CoreStrings.text1_CalcRegraDe3,
                  ),
                ),
              );
            },
            height: widget.height,
            width: customButtonWidth,
          ),
        ),
      ],
    );
  }
}
