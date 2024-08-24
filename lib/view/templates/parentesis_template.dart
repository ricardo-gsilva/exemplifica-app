import 'package:exemplifica/model/assets_model.dart';
import 'package:exemplifica/utils/constants/core_keys.dart';
import 'package:exemplifica/utils/constants/core_strings_assets.dart';
import 'package:exemplifica/view/molecules/content_list.dart';
import 'package:flutter/material.dart';
import 'package:exemplifica/utils/constants/strings/strings_parentesis.dart';

class ParentesisTemplate extends StatelessWidget {
  final double width;
  final double height;
  const ParentesisTemplate({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      key: Key(CoreKeys.parentesisTemplate),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: <Widget>[
            ContentList(
              stringsAndAssets: [
                StringsAndAssetsModel(
                    title: CoreStringsParentesis.text1_parentesis),
                StringsAndAssetsModel(
                    title: CoreStringsAssets.parentesis_assets_1, height: height * 0.05),
                StringsAndAssetsModel(
                    title: CoreStringsParentesis.text2_parentesis),
                StringsAndAssetsModel(
                    title: CoreStringsAssets.parentesis_assets_2, height: height * 0.1),
                StringsAndAssetsModel(
                    title: CoreStringsParentesis.text3_parentesis),
                StringsAndAssetsModel(
                    title: CoreStringsAssets.parentesis_assets_3, height: height * 0.1),
                StringsAndAssetsModel(
                    title: CoreStringsParentesis.text4_parentesis),
                StringsAndAssetsModel(
                    title: CoreStringsParentesis.text5_parentesis),
                StringsAndAssetsModel(
                    title: CoreStringsAssets.parentesis_assets_5, height: height * 0.05),
                StringsAndAssetsModel(
                    title: CoreStringsParentesis.text6_parentesis),
                StringsAndAssetsModel(
                    title: CoreStringsAssets.parentesis_assets_6, height: height * 0.05),
                StringsAndAssetsModel(
                    title: CoreStringsParentesis.text7_parentesis),
                StringsAndAssetsModel(
                    title: CoreStringsAssets.parentesis_assets_7, height: height * 0.1),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
