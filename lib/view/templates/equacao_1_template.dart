import 'package:exemplifica/model/assets_model.dart';
import 'package:exemplifica/utils/constants/core_strings_assets.dart';
import 'package:exemplifica/view/molecules/content_list.dart';
import 'package:flutter/material.dart';
import 'package:exemplifica/utils/constants/strings/strings_equacao_1.dart';

class Equacao1Template extends StatelessWidget {
  final double height;
  final double width;
  const Equacao1Template({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            ContentList(
              stringsAndAssets: [
                StringsAndAssetsModel(title: CoreStringsEquacao1.text1_Equacao1),
                StringsAndAssetsModel(title: CoreStringsAssets.equacao_1_assets_2, width: width, height: height * 0.05),
                StringsAndAssetsModel(title: CoreStringsEquacao1.text2_Equacao1),
                StringsAndAssetsModel(title: CoreStringsAssets.equacao_1_assets_3, width: width, height: height * 0.05),
                StringsAndAssetsModel(title: CoreStringsEquacao1.text3_Equacao1),
                StringsAndAssetsModel(title: CoreStringsAssets.equacao_1_assets_4, width: width, height: height * 0.05),
                StringsAndAssetsModel(title: CoreStringsEquacao1.text4_Equacao1),
                StringsAndAssetsModel(title: CoreStringsAssets.equacao_1_assets_5, width: width, height: height * 0.20),
                StringsAndAssetsModel(title: CoreStringsEquacao1.text5_Equacao1),
                StringsAndAssetsModel(title: CoreStringsAssets.equacao_1_assets_6, width: width, height: height * 0.20),
                StringsAndAssetsModel(title: CoreStringsEquacao1.text6_Equacao1),
                StringsAndAssetsModel(title: CoreStringsAssets.equacao_1_assets_7, width: width, height: height * 0.20),
                StringsAndAssetsModel(title: CoreStringsEquacao1.text7_Equacao1),
              ],
            ),            
          ],
        ),
      ),
    );
  }
}
