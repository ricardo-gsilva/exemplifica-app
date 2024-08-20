import 'package:exemplifica/model/assets_model.dart';
import 'package:exemplifica/utils/constants/core_strings_assets.dart';
import 'package:exemplifica/utils/constants/strings/strings_mult_div.dart';
import 'package:exemplifica/widgets/molecules/content_list.dart';
import 'package:flutter/material.dart';

class MultiplicacaoDivisaoTemplate extends StatelessWidget {
  final double height;
  final double width;
  const MultiplicacaoDivisaoTemplate({
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
                StringsAndAssetsModel(title: CoreStringsMultDiv.text1_MultiplicaDiv),
                StringsAndAssetsModel(
                    title: CoreStringsAssets.multiplicacaoDivisao_assets_2,
                    height: height * 0.05),
                StringsAndAssetsModel(title: CoreStringsMultDiv.text2_MultiplicaDiv),
                StringsAndAssetsModel(title: CoreStringsMultDiv.text3_MultiplicaDiv),
                StringsAndAssetsModel(
                    title: CoreStringsAssets.multiplicacaoDivisao_assets_3,
                    height: height * 0.1),
                StringsAndAssetsModel(title: CoreStringsMultDiv.text4_MultiplicaDiv),
                StringsAndAssetsModel(
                    title: CoreStringsAssets.multiplicacaoDivisao_assets_4,
                    height: height * 0.1),
                StringsAndAssetsModel(title: CoreStringsMultDiv.text5_MultiplicaDiv),
                StringsAndAssetsModel(
                    title: CoreStringsAssets.multiplicacaoDivisao_assets_5,
                    height: height * 0.2),
                StringsAndAssetsModel(title: CoreStringsMultDiv.text6_MultiplicaDiv),
                StringsAndAssetsModel(title: CoreStringsMultDiv.text7_MultiplicaDiv, textAlign: TextAlign.center),
                StringsAndAssetsModel(
                    title: CoreStringsAssets.multiplicacaoDivisao_assets_11,
                    height: height * 0.1),
                StringsAndAssetsModel(
                    title: CoreStringsMultDiv.text8_MultiplicaDiv, textAlign: TextAlign.center),
                StringsAndAssetsModel(
                    title: CoreStringsAssets.multiplicacaoDivisao_assets_12,
                    height: height * 0.1),
                StringsAndAssetsModel(title: CoreStringsMultDiv.text9_MultiplicaDiv),
                StringsAndAssetsModel(title: CoreStringsMultDiv.text10_MultiplicaDiv),
                StringsAndAssetsModel(title: CoreStringsMultDiv.text11_MultiplicaDiv),
                StringsAndAssetsModel(
                    title: CoreStringsAssets.multiplicacaoDivisao_assets_8,
                    height: height * 0.1),
                StringsAndAssetsModel(title: CoreStringsMultDiv.text12_MultiplicaDiv,),
                StringsAndAssetsModel(
                    title: CoreStringsAssets.multiplicacaoDivisao_assets_9,
                    height: height * 0.15),
                StringsAndAssetsModel(title: CoreStringsMultDiv.text13_MultiplicaDiv,),
                StringsAndAssetsModel(
                    title: CoreStringsAssets.multiplicacaoDivisao_assets_10,
                    height: height * 0.05),
                StringsAndAssetsModel(title: CoreStringsMultDiv.text14_MultiplicaDiv,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
