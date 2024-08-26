// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:exemplifica/model/assets_model.dart';
// import 'package:exemplifica/view/templates/page_template.dart';
// import 'package:flutter/material.dart';

// import 'package:exemplifica/utils/constants/core_fontSize.dart';
// import 'package:exemplifica/utils/constants/core_strings.dart';
// import 'package:exemplifica/utils/constants/teste.dart';
// import 'package:exemplifica/utils/person_icons.dart';
// import 'package:exemplifica/view/atoms/custom_icon_button.dart';
// import 'package:exemplifica/view/atoms/custom_text.dart';
// import 'package:exemplifica/view/molecules/custom_scaffold.dart';
// import 'package:exemplifica/view/page/calc_equacao_1_page.dart';
// import 'package:exemplifica/view/templates/equacao_1_template.dart';

// class Equacao1Page extends StatelessWidget {
//   final List<StringsAndAssetsModel> teste;
//   const Equacao1Page({
//     Key? key,
//     required this.teste,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//     double height = MediaQuery.of(context).size.height;
//     return CustomScaffold(
//       titleAppBar: CustomText(
//         title: CoreStrings.titleEquacao1,
//         fontSize: CoreFontSize.h_22,
//       ),
//       leading: true,
//       actions: [
//         CustomIconButton(
//           icon: Person.calc,
//           onPressed: () {
//             Navigator.push(context,
//                 MaterialPageRoute(builder: (context) => CalcEquacao1Page()));
//           },
//         ),
//       ],
//       // body: Equacao1Template(
//       //   width: width,
//       //   height: height,
//       // ),
//       body: PageTemplate(width: width, height: height, stringsAndAssetsList: teste),
//     );
//   }
// }
