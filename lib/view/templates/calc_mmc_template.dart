// import 'package:exemplifica/controller/controller_mmc.dart';
// import 'package:exemplifica/utils/constants/core_fontSize.dart';
// import 'package:exemplifica/utils/constants/core_strings.dart';
// import 'package:exemplifica/view/atoms/custom_text.dart';
// import 'package:exemplifica/view/molecules/calculator_form.dart';
// import 'package:exemplifica/view/molecules/response_calculator.dart';
// import 'package:flutter/material.dart';

// class CalcMmcTemplate extends StatefulWidget {
//   const CalcMmcTemplate({super.key});

//   @override
//   State<CalcMmcTemplate> createState() => _CalcMmcTemplateState();
// }

// class _CalcMmcTemplateState extends State<CalcMmcTemplate> {
//   final ControllerMmc mmc = ControllerMmc.instance;

//   @override
//   void initState() {
//     mmc.resetCampos();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//     double height = MediaQuery.of(context).size.height;
//     return SingleChildScrollView(
//       child: Padding(
//         padding: const EdgeInsets.all(12.0),
//         child: Column(
//           children: <Widget>[
//             CustomText(
//               title: CoreStrings.text1_CalcMmc,
//               fontSize: CoreFontSize.h_20,
//             ),
//             CalculatorForm(
//               controller: [mmc.val1, mmc.val2],
//               label: [CoreStrings.valor1, CoreStrings.valor2],
//               height: height,
//               width: width,
//               onTapFirst: (() {
//                 setState(() {
//                   mmc.verificarCampos();
//                 });
//               }),
//               onTapSecond: (() {
//                 setState(() {
//                   mmc.resetCampos();
//                 });
//               }),
//             ),
//             Visibility(
//               visible: mmc.visible,
//               child: ResponseCalculator(
//                 response: [mmc.resultMmc, mmc.resultMmc1],
//               ),
//             ),            
//           ],
//         ),
//       ),
//     );
//   }
// }
