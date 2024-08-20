import 'package:flutter/material.dart';
import 'package:exemplifica/model/assets_model.dart';
import 'package:exemplifica/utils/constants/core_strings_assets.dart';
import 'package:exemplifica/utils/constants/strings/strings_porcentagem.dart';
import 'package:exemplifica/view/molecules/content_list.dart';

class PorcentagemTemplate extends StatelessWidget {
  final double height;
  final double width;
  const PorcentagemTemplate({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: <Widget>[
            ContentList(
              stringsAndAssets: [
                StringsAndAssetsModel(title: CoreStringsPorcentagem.text1_porcentagem),
                StringsAndAssetsModel(title: CoreStringsPorcentagem.text2_porcentagem),
                StringsAndAssetsModel(title: CoreStringsAssets.porcentagem_assets_2, width: width, height: height * 0.15),
                StringsAndAssetsModel(title: CoreStringsPorcentagem.text3_porcentagem),
                StringsAndAssetsModel(title: CoreStringsAssets.porcentagem_assets_3, width: width, height: height * 0.05),
                StringsAndAssetsModel(title: CoreStringsPorcentagem.text4_porcentagem),
                StringsAndAssetsModel(title: CoreStringsAssets.porcentagem_assets_4, width: width, height: height * 0.05),
                StringsAndAssetsModel(title: CoreStringsPorcentagem.text5_porcentagem),
                StringsAndAssetsModel(title: CoreStringsAssets.porcentagem_assets_5, width: width, height: height * 0.2),
                StringsAndAssetsModel(title: CoreStringsPorcentagem.text6_porcentagem),
                StringsAndAssetsModel(title: CoreStringsPorcentagem.text7_porcentagem),
                StringsAndAssetsModel(title: CoreStringsPorcentagem.text8_porcentagem),
                StringsAndAssetsModel(title: CoreStringsAssets.porcentagem_assets_6, width: width, height: height * 0.15),
                StringsAndAssetsModel(title: CoreStringsPorcentagem.text9_porcentagem),
                StringsAndAssetsModel(title: CoreStringsAssets.porcentagem_assets_7, width: width, height: height * 0.2),
                StringsAndAssetsModel(title: CoreStringsPorcentagem.text10_porcentagem),
                StringsAndAssetsModel(title: CoreStringsAssets.porcentagem_assets_8, width: width, height: height * 0.15),
                StringsAndAssetsModel(title: CoreStringsPorcentagem.text11_porcentagem),
                StringsAndAssetsModel(title: CoreStringsAssets.porcentagem_assets_9, width: width, height: height * 0.2),
                StringsAndAssetsModel(title: CoreStringsPorcentagem.text12_porcentagem),
              ],
            ),            
          ],
        ),
      ),
    );
  }
}
