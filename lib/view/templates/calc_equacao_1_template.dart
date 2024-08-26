// import 'package:exemplifica/controller/controller_equacao_1.dart';
// import 'package:exemplifica/utils/constants/core_fontSize.dart';
// import 'package:exemplifica/utils/constants/core_keys.dart';
// import 'package:exemplifica/utils/constants/core_strings.dart';
// import 'package:exemplifica/view/molecules/calculator_form.dart';
// import 'package:exemplifica/view/molecules/response_calculator.dart';
// import 'package:flutter/material.dart';

// class CalcEquacao1Template extends StatefulWidget {
//   const CalcEquacao1Template({super.key});

//   @override
//   State<CalcEquacao1Template> createState() => _CalcEquacao1TemplateState();
// }

// class _CalcEquacao1TemplateState extends State<CalcEquacao1Template> {
//   final ControllerEquacao1 equacao_1 = ControllerEquacao1.instance;

//   @override
//   void initState() {
//     equacao_1.resetCampos();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//     double height = MediaQuery.of(context).size.height;
//     return SingleChildScrollView(
//       key: Key(CoreKeys.appBar),
//       child: Padding(
//         padding: const EdgeInsets.all(12.0),
//         child: Container(
//           child: SingleChildScrollView(
//             child: Column(
//               children: <Widget>[
//                 Text(
//                   CoreStrings.text1_CalcEquacao1,
//                   style: TextStyle(fontSize: CoreFontSize.h_18),
//                 ),
//                 CalculatorForm(
//                   title: CoreStrings.text2_CalcEquacao1,
//                   controller: [equacao_1.val1, equacao_1.val2],
//                   label: ["a:", "b:"],
//                   height: height,
//                   width: width,
//                   onTapFirst: (() {
//                     setState(() {
//                       equacao_1.verificarCampos();
//                     });
//                   }),
//                   onTapSecond: (() {
//                     setState(() {
//                       equacao_1.resetCampos();
//                     });
//                   }),
//                 ),
//                 ResponseCalculator(
//                   response: [equacao_1.resultEq1_1],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
