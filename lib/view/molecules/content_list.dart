import 'package:flutter/material.dart';

import 'package:exemplifica/model/assets_model.dart';
import 'package:exemplifica/view/atoms/custom_image_asset.dart';
import 'package:exemplifica/view/atoms/custom_text.dart';

class ContentList extends StatelessWidget {
  final List<StringsAndAssetsModel> stringsAndAssets;
  const ContentList({
    Key? key,
    required this.stringsAndAssets,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: stringsAndAssets.length,
      itemBuilder: (_, i) {
        StringsAndAssetsModel stringsAssets = stringsAndAssets[i];
        if (stringsAssets.title.contains(".png")) {
          return CustomImageAsset(
            asset: stringsAssets.title,
            width: stringsAssets.width,
            height: stringsAssets.height,
          );
        } else {
          return CustomText(
            title: stringsAssets.title,
            fontSize: stringsAssets.fontSize,
            fontWeight: stringsAssets.fontWeight,
            textAlign: stringsAssets.textAlign,
            color: stringsAssets.color,
          );
        }
      },
    );
  }
}
