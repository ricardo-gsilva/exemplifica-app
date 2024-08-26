import 'package:exemplifica/model/assets_model.dart';
import 'package:exemplifica/utils/constants/core_keys.dart';
import 'package:exemplifica/view/molecules/content_list.dart';
import 'package:flutter/material.dart';

class PageTemplate extends StatelessWidget {
  final double width;
  final double height;
  final List<StringsAndAssetsModel> stringsAndAssetsList;
  const PageTemplate({
    Key? key,
    required this.width,
    required this.height,
    required this.stringsAndAssetsList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      key: Key(CoreKeys.pageTemplate),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: <Widget>[
            ContentList(
              stringsAndAssets: stringsAndAssetsList,              
            ),
          ],
        ),
      ),
    );
  }
}
