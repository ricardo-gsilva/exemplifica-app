// import 'package:exemplifica/controller/controller_juros_simples.dart';
// import 'package:exemplifica/utils/constants/core_fontSize.dart';
// import 'package:exemplifica/utils/constants/core_strings.dart';
// import 'package:exemplifica/view/atoms/custom_text.dart';
// import 'package:exemplifica/view/molecules/calculator_form.dart';
// import 'package:exemplifica/view/molecules/response_calculator.dart';
// import 'package:flutter/material.dart';

// class CalcJurosSimplesTemplate extends StatefulWidget {
//   const CalcJurosSimplesTemplate({super.key});

//   @override
//   State<CalcJurosSimplesTemplate> createState() =>
//       _CalcJurosSimplesTemplateState();
// }

// class _CalcJurosSimplesTemplateState extends State<CalcJurosSimplesTemplate> {
//   final ControllerJurosSimples jurosSimples = ControllerJurosSimples.instance;

//   @override
//   void initState() {
//     jurosSimples.resetCampos();
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
//               title: CoreStrings.text1_CalcJurosSimples,
//               fontSize: CoreFontSize.h_20,
//             ),
//             CalculatorForm(
//               controller: [
//                 jurosSimples.c,
//                 jurosSimples.i,
//                 jurosSimples.t,
//                 jurosSimples.j
//               ],
//               label: ["Capital:", "Taxa:", "Meses:", "Juros:"],
//               height: height,
//               width: width,
//               onTapFirst: (() {
//                 setState(() {
//                   jurosSimples.verificarCampos();
//                 });
//               }),
//               onTapSecond: (() {
//                 setState(() {
//                   jurosSimples.resetCampos();
//                 });
//               }),
//             ),
//             Visibility(
//               child: ResponseCalculator(
//                 response: [
//                   jurosSimples.resultjS,
//                   jurosSimples.resultjS_1,
//                   jurosSimples.resultjS_2
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
