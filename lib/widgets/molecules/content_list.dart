import 'package:exemplifica/widgets/atoms/custom_text.dart';
import 'package:flutter/material.dart';

import 'package:exemplifica/widgets/atoms/custom_image_asset.dart';

class ContentList extends StatelessWidget {
  final double width;
  final List<String> contentList;
  const ContentList({
    Key? key,
    required this.width,
    required this.contentList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: contentList.length,
      itemBuilder: (_, i) {
        if (contentList[i].contains(".png")) {
          return CustomImageAsset(
            asset: contentList[i],
            width: width,
          );
        } else {
          return CustomText(
            title: contentList[i],
            fontSize: 16,
          );
        }
      },
    );
  }
}
