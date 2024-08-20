import 'package:exemplifica/model/assets_model.dart';
import 'package:exemplifica/utils/constants/core_strings_assets.dart';
import 'package:exemplifica/widgets/molecules/content_list.dart';
import 'package:flutter/material.dart';
import 'package:exemplifica/utils/constants/strings/strings_expoentes.dart';
class ExpoentesTemplate extends StatelessWidget {
  final double width;
  final double height;
  const ExpoentesTemplate({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ContentList(
            stringsAndAssets: [
              StringsAndAssetsModel(
                title: CoreStringsExpoentes.text1_expoentes,
              ),
              StringsAndAssetsModel(
                  title: CoreStringsAssets.expoentes_assets_2,
                  height: height * 0.05),
              StringsAndAssetsModel(
                title: CoreStringsExpoentes.text2_expoentes,
              ),
              StringsAndAssetsModel(
                  title: CoreStringsAssets.expoentes_assets_3,
                  height: height * 0.05),
              StringsAndAssetsModel(
                title: CoreStringsExpoentes.text3_expoentes,
              ),
              StringsAndAssetsModel(
                  title: CoreStringsAssets.expoentes_assets_4,
                  height: height * 0.05),
              StringsAndAssetsModel(
                title: CoreStringsExpoentes.text4_expoentes,
              ),
              StringsAndAssetsModel(
                  title: CoreStringsAssets.expoentes_assets_5,
                  height: height * 0.05),
            ],
          ),
        ],
      ),
    );
  }
}
