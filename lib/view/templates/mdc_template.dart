import 'package:exemplifica/utils/constants/core_keys.dart';
import 'package:flutter/material.dart';
import 'package:exemplifica/model/assets_model.dart';
import 'package:exemplifica/utils/constants/core_strings_assets.dart';
import 'package:exemplifica/utils/constants/strings/strings_mdc.dart';
import 'package:exemplifica/view/molecules/content_list.dart';

class MdcTemplate extends StatelessWidget {
  final double height;
  final double width;
  const MdcTemplate({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      key: Key(CoreKeys.mdcTemplate),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: <Widget>[
            ContentList(
              stringsAndAssets: [
                StringsAndAssetsModel(title: CoreStringsMdc.text1_mdc),
                StringsAndAssetsModel(title: CoreStringsMdc.text2_mdc),
                StringsAndAssetsModel(title: CoreStringsMdc.text3_mdc),
                StringsAndAssetsModel(title: CoreStringsAssets.mdc_assets_2, width: width, height: height * 0.2),
                StringsAndAssetsModel(title: CoreStringsMdc.text4_mdc),
                StringsAndAssetsModel(title: CoreStringsAssets.mdc_assets_3, width: width, height: height * 0.2),
                StringsAndAssetsModel(title: CoreStringsMdc.text5_mdc),
              ],
            ),            
          ],
        ),
      ),
    );
  }
}
