import 'package:flutter/material.dart';

import 'package:exemplifica/model/assets_model.dart';
import 'package:exemplifica/utils/constants/core_strings_assets.dart';
import 'package:exemplifica/utils/constants/strings/strings_regra_de_3.dart';
import 'package:exemplifica/widgets/molecules/content_list.dart';

class RegraDe3Template extends StatelessWidget {
  final double height;
  final double width;
  const RegraDe3Template({
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
                StringsAndAssetsModel(title: CoreStringsRegraDe3.text1_regraDe3),
                StringsAndAssetsModel(title: CoreStringsRegraDe3.text2_regraDe3, textAlign: TextAlign.center, fontSize: 20, fontWeight: FontWeight.bold),
                StringsAndAssetsModel(title: CoreStringsAssets.regra_de3_assets_3, width: width, height: height * 0.12),
                StringsAndAssetsModel(title: CoreStringsRegraDe3.text3_regraDe3),
                StringsAndAssetsModel(title: CoreStringsAssets.regra_de3_assets_4, width: width, height: height * 0.05),
                StringsAndAssetsModel(title: CoreStringsRegraDe3.text4_regraDe3, color: Colors.red, fontSize: 20),
                StringsAndAssetsModel(title: CoreStringsRegraDe3.text5_regraDe3),
                StringsAndAssetsModel(title: CoreStringsAssets.regra_de3_assets_5, width: width, height: height * 0.15),
                StringsAndAssetsModel(title: CoreStringsRegraDe3.text6_regraDe3),
                StringsAndAssetsModel(title: CoreStringsAssets.regra_de3_assets_6, width: width, height: height * 0.05),
                StringsAndAssetsModel(title: CoreStringsRegraDe3.text7_regraDe3),
                StringsAndAssetsModel(title: CoreStringsRegraDe3.text10_regraDe3, textAlign: TextAlign.center, fontSize: 20, fontWeight: FontWeight.bold),             
                StringsAndAssetsModel(title: CoreStringsRegraDe3.text8_regraDe3),
                StringsAndAssetsModel(title: CoreStringsRegraDe3.text9_regraDe3),
                StringsAndAssetsModel(title: CoreStringsAssets.regra_de3_assets_8, width: width, height: height * 0.15),
                StringsAndAssetsModel(title: CoreStringsRegraDe3.text11_regraDe3),
                StringsAndAssetsModel(title: CoreStringsAssets.regra_de3_assets_9, width: width, height: height * 0.1),
                StringsAndAssetsModel(title: CoreStringsRegraDe3.text12_regraDe3),
                StringsAndAssetsModel(title: CoreStringsAssets.regra_de3_assets_10, width: width, height: height * 0.1),
                StringsAndAssetsModel(title: CoreStringsRegraDe3.text13_regraDe3),
                StringsAndAssetsModel(title: CoreStringsAssets.regra_de3_assets_11, width: width, height: height * 0.05),
                StringsAndAssetsModel(title: CoreStringsRegraDe3.text14_regraDe3),
                StringsAndAssetsModel(title: CoreStringsAssets.regra_de3_assets_12, width: width, height: height * 0.1),
                StringsAndAssetsModel(title: CoreStringsRegraDe3.text15_regraDe3),
                StringsAndAssetsModel(title: CoreStringsAssets.regra_de3_assets_13, width: width, height: height * 0.05),
                StringsAndAssetsModel(title: CoreStringsRegraDe3.text16_regraDe3),
              ],
            ),              
          ],
        ),
      ),
    );
  }
}
