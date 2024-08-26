// import 'package:exemplifica/model/assets_model.dart';
// import 'package:exemplifica/utils/constants/core_keys.dart';
// import 'package:exemplifica/utils/constants/core_strings_assets.dart';
// import 'package:exemplifica/view/molecules/content_list.dart';
// import 'package:flutter/material.dart';
// import 'package:exemplifica/utils/constants/strings/strings_juros_simples.dart';

// class JurosSimplesTemplate extends StatelessWidget {
//   final double height;
//   final double width;
//   const JurosSimplesTemplate({
//     Key? key,
//     required this.height,
//     required this.width,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       key: Key(CoreKeys.jurosSimplesTemplate),
//       child: Padding(
//         padding: const EdgeInsets.all(12.0),
//         child: Column(
//           children: <Widget>[
//             ContentList(
//               stringsAndAssets: [
//                 StringsAndAssetsModel(title: CoreStringsJurosSimples.text1_JurosSimples),
//                 StringsAndAssetsModel(title: CoreStringsJurosSimples.text2_JurosSimples),
//                 StringsAndAssetsModel(title: CoreStringsJurosSimples.text3_JurosSimples),
//                 StringsAndAssetsModel(title: CoreStringsJurosSimples.text4_JurosSimples),
//                 StringsAndAssetsModel(title: CoreStringsAssets.jurosSimples_assets_2, width: width, height: height * 0.05),
//                 StringsAndAssetsModel(title: CoreStringsJurosSimples.text5_JurosSimples),
//                 StringsAndAssetsModel(title: CoreStringsJurosSimples.text6_JurosSimples),
//                 StringsAndAssetsModel(title: CoreStringsAssets.jurosSimples_assets_3, width: width, height: height * 0.05),
//                 StringsAndAssetsModel(title: CoreStringsJurosSimples.text7_JurosSimples),
//                 StringsAndAssetsModel(title: CoreStringsJurosSimples.text8_JurosSimples),
//                 StringsAndAssetsModel(title: CoreStringsAssets.jurosSimples_assets_4, width: width, height: height * 0.2),
//                 StringsAndAssetsModel(title: CoreStringsAssets.jurosSimples_assets_5, width: width, height: height * 0.15),
//                 StringsAndAssetsModel(title: CoreStringsAssets.jurosSimples_assets_6, width: width, height: height * 0.15),
//                 StringsAndAssetsModel(title: CoreStringsJurosSimples.text9_JurosSimples),           
//               ],
//             ),            
//           ],
//         ),
//       ),
//     );
//   }
// }
