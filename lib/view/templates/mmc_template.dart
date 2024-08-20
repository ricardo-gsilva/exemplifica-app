import 'package:exemplifica/model/assets_model.dart';
import 'package:exemplifica/utils/constants/core_strings_assets.dart';
import 'package:exemplifica/view/molecules/content_list.dart';
import 'package:flutter/material.dart';
import 'package:exemplifica/utils/constants/strings/strings_mmc.dart';

class MmcTemplate extends StatelessWidget {
  final double height;
  final double width;
  const MmcTemplate({
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
                StringsAndAssetsModel(title: CoreStringsMmc.text1_mmc),
                StringsAndAssetsModel(title: CoreStringsMmc.text2_mmc),
                StringsAndAssetsModel(title: CoreStringsAssets.mmc_assets_2, width: width, height: height * 0.25),
                StringsAndAssetsModel(title: CoreStringsMmc.text3_mmc),
                StringsAndAssetsModel(title: CoreStringsMmc.text4_mmc),
                StringsAndAssetsModel(title: CoreStringsAssets.mmc_assets_3, width: width, height: height * 0.15),
                StringsAndAssetsModel(title: CoreStringsMmc.text5_mmc),
                StringsAndAssetsModel(title: CoreStringsAssets.mmc_assets_4, width: width, height: height * 0.3),
                StringsAndAssetsModel(title: CoreStringsMmc.text6_mmc),
                StringsAndAssetsModel(title: CoreStringsAssets.mmc_assets_5, width: width, height: height * 0.5),
                StringsAndAssetsModel(title: CoreStringsMmc.text7_mmc),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
