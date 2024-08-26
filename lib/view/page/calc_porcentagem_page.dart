// import 'package:exemplifica/utils/constants/core_fontSize.dart';
// import 'package:exemplifica/utils/constants/core_keys.dart';
// import 'package:exemplifica/utils/constants/core_strings.dart';
// import 'package:exemplifica/view/atoms/custom_appBar.dart';
// import 'package:exemplifica/view/atoms/custom_icon_button.dart';
// import 'package:exemplifica/view/atoms/custom_text.dart';
// import 'package:exemplifica/view/molecules/custom_scaffold.dart';
// import 'package:exemplifica/view/page/home_page.dart';
// import 'package:exemplifica/view/templates/calc_porcentagem_template.dart';
// import 'package:flutter/material.dart';

// class CalcPorcentagemPage extends StatelessWidget {
//   const CalcPorcentagemPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return CustomScaffold(
//       titleAppBar: CustomAppBar(
//         title: CustomText(
//           title: CoreStrings.titlePorcentagem,
//           fontSize: CoreFontSize.h_22,
//         ),
//       ),
//       leading: true,
//       actions: [
//         CustomIconButton(
//           icon: Icons.home,
//           onPressed: () {
//             Navigator.of(context).pushAndRemoveUntil(
//                 MaterialPageRoute(builder: (context) => HomePage()),
//                 (Route<dynamic> route) => false);
//           },
//         )
//       ],
//       body: CalcPorcentagemTemplate(
//         key: Key(CoreKeys.calcPorcentagemTemplate),
//       ),
//     );
//   }
// }