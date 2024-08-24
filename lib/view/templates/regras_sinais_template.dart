import 'package:exemplifica/model/assets_model.dart';
import 'package:exemplifica/utils/constants/core_colors.dart';
import 'package:exemplifica/utils/constants/core_keys.dart';
import 'package:exemplifica/utils/constants/core_strings_assets.dart';
import 'package:exemplifica/utils/constants/strings/strings_regras_sinais.dart';
import 'package:exemplifica/view/molecules/content_list.dart';
import 'package:flutter/material.dart';

class RegrasSinaisTemplate extends StatelessWidget {
  final double height;
  final double width;
  const RegrasSinaisTemplate({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      key: Key(CoreKeys.regrasSinaisTemplate),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: <Widget>[
            ContentList(
              stringsAndAssets: [
                StringsAndAssetsModel(title: CoreStringsRegrasSinais.text1_RegraSinal),
                StringsAndAssetsModel(
                    title: CoreStringsAssets.regras_sinais_assets_2,
                    height: height * 0.1),
                StringsAndAssetsModel(title: CoreStringsRegrasSinais.text2_RegraSinal),
                StringsAndAssetsModel(title: CoreStringsRegrasSinais.text3_RegraSinal),
                StringsAndAssetsModel(
                    title: CoreStringsAssets.regras_sinais_assets_5,
                    height: height * 0.05),
                StringsAndAssetsModel(title: CoreStringsRegrasSinais.text4_RegraSinal),
                StringsAndAssetsModel(title: CoreStringsRegrasSinais.text5_RegraSinal),
                StringsAndAssetsModel(
                    title: CoreStringsAssets.regras_sinais_assets_3,
                    height: height * 0.05),
                StringsAndAssetsModel(title: CoreStringsRegrasSinais.text6_RegraSinal),
                StringsAndAssetsModel(title: CoreStringsRegrasSinais.text7_RegraSinal),
                StringsAndAssetsModel(title: CoreStringsRegrasSinais.text8_RegraSinal, color: CoreColors.textAlert),
                StringsAndAssetsModel(title: CoreStringsRegrasSinais.text9_RegraSinal, color: CoreColors.textAlert),
                StringsAndAssetsModel(title: CoreStringsRegrasSinais.text10_RegraSinal, color: CoreColors.textAlert),
                StringsAndAssetsModel(title: CoreStringsRegrasSinais.text11_RegraSinal),
                StringsAndAssetsModel(title: CoreStringsRegrasSinais.text12_RegraSinal),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
