import 'package:exemplifica/model/assets_model.dart';
import 'package:exemplifica/utils/constants/core_strings_assets.dart';
import 'package:exemplifica/widgets/molecules/content_list.dart';
import 'package:flutter/material.dart';
import 'package:exemplifica/utils/constants/strings/strings_juros_compostos.dart';

class JurosCompostosTemplate extends StatelessWidget {
  final double width;
  final double height;
  const JurosCompostosTemplate({
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
          children: <Widget>[
            ContentList(
              stringsAndAssets: [
                StringsAndAssetsModel(title: CoreStringsJurosCompostos.text1_JurosCompostos),
                StringsAndAssetsModel(title: CoreStringsJurosCompostos.text2_JurosCompostos),
                StringsAndAssetsModel(title: CoreStringsJurosCompostos.text3_JurosCompostos),
                StringsAndAssetsModel(title: CoreStringsJurosCompostos.text4_JurosCompostos),
                StringsAndAssetsModel(title: CoreStringsJurosCompostos.text5_JurosCompostos),
                StringsAndAssetsModel(title: CoreStringsAssets.jurosCompostos_assets_2, width: width, height: height * 0.05),
                StringsAndAssetsModel(title: CoreStringsJurosCompostos.text6_JurosCompostos),
                StringsAndAssetsModel(title: CoreStringsJurosCompostos.text8_JurosCompostos),
                StringsAndAssetsModel(title: CoreStringsJurosCompostos.text9_JurosCompostos),
                StringsAndAssetsModel(title: CoreStringsJurosCompostos.text10_JurosCompostos),
                StringsAndAssetsModel(title: CoreStringsAssets.jurosCompostos_assets_3, width: width, height: height * 0.2),
                StringsAndAssetsModel(title: CoreStringsJurosCompostos.text11_JurosCompostos),
                StringsAndAssetsModel(title: CoreStringsAssets.jurosCompostos_assets_4, width: width, height: height * 0.1),
                StringsAndAssetsModel(title: CoreStringsJurosCompostos.text12_JurosCompostos),
                StringsAndAssetsModel(title: CoreStringsJurosCompostos.text13_JurosCompostos),
                StringsAndAssetsModel(title: CoreStringsJurosCompostos.text14_JurosCompostos),
                StringsAndAssetsModel(title: CoreStringsJurosCompostos.text15_JurosCompostos),
                StringsAndAssetsModel(title: CoreStringsAssets.jurosCompostos_assets_5, width: width, height: height * 0.5),
                StringsAndAssetsModel(title: CoreStringsJurosCompostos.text16_JurosCompostos),
                StringsAndAssetsModel(title: CoreStringsJurosCompostos.text17_JurosCompostos),
                StringsAndAssetsModel(title: CoreStringsAssets.jurosCompostos_assets_6, width: width, height: height * 0.15),
                StringsAndAssetsModel(title: CoreStringsJurosCompostos.text18_JurosCompostos),
                StringsAndAssetsModel(title: CoreStringsAssets.jurosCompostos_assets_7, width: width, height: height * 0.15),
                StringsAndAssetsModel(title: CoreStringsJurosCompostos.text19_JurosCompostos),
                StringsAndAssetsModel(title: CoreStringsAssets.jurosCompostos_assets_8, width: width, height: height * 0.2),
                StringsAndAssetsModel(title: CoreStringsJurosCompostos.text20_JurosCompostos),
                StringsAndAssetsModel(title: CoreStringsAssets.jurosCompostos_assets_9, width: width, height: height * 0.1),
                StringsAndAssetsModel(title: CoreStringsJurosCompostos.text21_JurosCompostos),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
