import 'package:exemplifica/model/assets_model.dart';
import 'package:exemplifica/utils/constants/core_strings_assets.dart';
import 'package:exemplifica/view/molecules/content_list.dart';
import 'package:flutter/material.dart';
import 'package:exemplifica/utils/constants/strings/strings_tabuada.dart';

class TabuadaTemplate extends StatelessWidget {
  final double width;
  final double height;
  const TabuadaTemplate({
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
                StringsAndAssetsModel(title: CoreStringsTabuada.text1_tabuada),
                StringsAndAssetsModel(title: CoreStringsTabuada.text2_tabuada),
                StringsAndAssetsModel(title: CoreStringsAssets.tabuada_assets_2, width: width, height: height * 0.05),
                StringsAndAssetsModel(title: CoreStringsTabuada.text3_tabuada),
                StringsAndAssetsModel(title: CoreStringsTabuada.text4_tabuada),
                StringsAndAssetsModel(title: CoreStringsAssets.tabuada_assets_3, width: width, height: height * 0.05),
                StringsAndAssetsModel(title: CoreStringsTabuada.text5_tabuada),
                StringsAndAssetsModel(title: CoreStringsAssets.tabuada_assets_4, width: width, height: height * 0.1),
                StringsAndAssetsModel(title: CoreStringsTabuada.text6_tabuada),                
              ],
            ),
          ],
        ),
      ),
    );
  }
}
