import 'package:exemplifica/controller/controller_mmc.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/widgets/atoms/custom_text.dart';
import 'package:exemplifica/widgets/molecules/calculator_form.dart';
import 'package:exemplifica/widgets/molecules/response_calculator.dart';
import 'package:flutter/material.dart';

class CalcMmcTemplate extends StatefulWidget {
  const CalcMmcTemplate({super.key});

  @override
  State<CalcMmcTemplate> createState() => _CalcMmcTemplateState();
}

class _CalcMmcTemplateState extends State<CalcMmcTemplate> {
  final ControllerMmc mmc = ControllerMmc.instance;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: <Widget>[
            CustomText(
              title: CoreStrings.text1_CalcMmc,
              fontSize: 20,
            ),
            CalculatorForm(
              controller: [mmc.val1, mmc.val2],
              label: ["Valor 1:", "Valor 2:"],
              height: height,
              width: width,
              onTapFirst: (() {
                setState(() {
                  mmc.verificarCampos();
                });
              }),
              onTapSecond: (() {
                setState(() {
                  mmc.resetCampos();
                });
              }),
            ),
            Visibility(
              visible: mmc.visible,
              child: ResponseCalculator(
                response: [mmc.resultMmc, mmc.resultMmc1],
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
            //   child: Text(
            //     "Digite 2 números para efetuar o cálculo do MMC!",
            //     style: TextStyle(fontSize: 18.0),
            //   ),
            // ),
            // Container(
            //   padding: EdgeInsets.all(10),
            //   margin: EdgeInsets.all(10),
            //   decoration: BoxDecoration(
            //       color: CoreColors.appBarColor,
            //       borderRadius: BorderRadius.circular(15)),
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: <Widget>[
            //       TextFieldInput(
            //         title: "Valor 1:",
            //         hintText: "",
            //         controller: modelMmc.val1,
            //       ),
            //       TextFieldInput(
            //         title: "Valor 2:",
            //         hintText: "",
            //         controller: modelMmc.val2,
            //       ),
            //       RowButtons1(
            //         titleFirst: CoreStrings.calc,
            //         titleSecond: CoreStrings.clear,
            //         paddingTop: 5,
            //         height: height,
            //         width: width,
            //         onTapFirst: (() {
            //           setState(() {
            //             modelMmc.verificarCampos();
            //           });
            //         }),
            //         onTapSecond: (() {
            //           setState(() {
            //             modelMmc.resetCampos();
            //           });
            //         }),
            //       ),
            //     ],
            //   ),
            // ),
            // Visibility(
            //   visible: modelMmc.visible,
            //   child: Column(
            //     children: [
            //       Padding(
            //         padding: EdgeInsets.only(left: 10, right: 10, top: 5),
            //         child: Text(
            //           modelMmc.resultMmc,
            //           textAlign: TextAlign.left,
            //           style: TextStyle(
            //               color: CoreColors.textPrimary, fontSize: 21.0),
            //         ),
            //       ),
            //       Padding(
            //         padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
            //         child: Text(
            //           modelMmc.resultMmc1,
            //           textAlign: TextAlign.left,
            //           style: TextStyle(
            //               color: CoreColors.textPrimary, fontSize: 21.0),
            //         ),
            //       ),
            // ],
            // ),
            // )
          ],
        ),
      ),
    );
  }
}
