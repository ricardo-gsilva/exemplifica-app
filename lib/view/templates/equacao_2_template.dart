import 'package:exemplifica/model/assets_model.dart';
import 'package:exemplifica/utils/constants/core_strings_assets.dart';
import 'package:exemplifica/view/molecules/content_list.dart';
import 'package:flutter/material.dart';
import 'package:exemplifica/utils/constants/strings/strings_equacao_2.dart';

class Equacao2Template extends StatelessWidget {
  final double width;
  final double height;
  const Equacao2Template({
    Key? key,
    required this.width,
    required this.height
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
                StringsAndAssetsModel(title: CoreStringsEquacao2.text1_Equacao2),
                StringsAndAssetsModel(title: CoreStringsAssets.equacao_2_assets_2, width: width, height: height * 0.05),
                StringsAndAssetsModel(title: CoreStringsEquacao2.text2_Equacao2),
                StringsAndAssetsModel(title: CoreStringsEquacao2.text3_Equacao2),
                StringsAndAssetsModel(title: CoreStringsEquacao2.text4_Equacao2),
                StringsAndAssetsModel(title: CoreStringsAssets.equacao_2_assets_3, width: width, height: height * 0.05),
                StringsAndAssetsModel(title: CoreStringsEquacao2.text5_Equacao2),
                StringsAndAssetsModel(title: CoreStringsAssets.equacao_2_assets_4, width: width * 0.35, height: height * 0.1),
                StringsAndAssetsModel(title: CoreStringsEquacao2.text6_Equacao2),
                StringsAndAssetsModel(title: CoreStringsAssets.equacao_2_assets_5, width: width * 0.35, height: height * 0.1),
                StringsAndAssetsModel(title: CoreStringsEquacao2.text7_Equacao2),
                StringsAndAssetsModel(title: CoreStringsAssets.equacao_2_assets_6, width: width * 0.35, height: height * 0.1),
                StringsAndAssetsModel(title: CoreStringsEquacao2.text8_Equacao2),
                StringsAndAssetsModel(title: CoreStringsAssets.equacao_2_assets_7, width: width * 0.35, height: height * 0.05),
                StringsAndAssetsModel(title: CoreStringsEquacao2.text9_Equacao2),
                StringsAndAssetsModel(title: CoreStringsAssets.equacao_2_assets_8, width: width, height: height * 0.05),
                StringsAndAssetsModel(title: CoreStringsEquacao2.text10_Equacao2),
                StringsAndAssetsModel(title: CoreStringsAssets.equacao_2_assets_17, width: width, height: height * 0.2),
                StringsAndAssetsModel(title: CoreStringsEquacao2.text11_Equacao2),
                StringsAndAssetsModel(title: CoreStringsAssets.equacao_2_assets_12, width: width * 0.5),
                StringsAndAssetsModel(title: CoreStringsEquacao2.text12_Equacao2),
                StringsAndAssetsModel(title: CoreStringsEquacao2.text13_Equacao2),
                StringsAndAssetsModel(title: CoreStringsAssets.equacao_2_assets_13, width: width * 0.7, height: height * 0.3),
                StringsAndAssetsModel(title: CoreStringsEquacao2.text14_Equacao2),
                StringsAndAssetsModel(title: CoreStringsAssets.equacao_2_assets_14, width: width * 0.7, height: height * 0.3),
                StringsAndAssetsModel(title: CoreStringsEquacao2.text15_Equacao2),
                StringsAndAssetsModel(title: CoreStringsAssets.equacao_2_assets_15, width: width * 0.7, height: height * 0.2),
                StringsAndAssetsModel(title: CoreStringsEquacao2.text16_Equacao2),
                StringsAndAssetsModel(title: CoreStringsAssets.equacao_2_assets_16, width: width * 0.7, height: height * 0.2),
                StringsAndAssetsModel(title: CoreStringsEquacao2.text17_Equacao2),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
