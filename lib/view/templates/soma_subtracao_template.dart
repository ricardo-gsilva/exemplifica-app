import 'package:exemplifica/model/assets_model.dart';
import 'package:exemplifica/view/molecules/content_list.dart';
import 'package:flutter/material.dart';
import 'package:exemplifica/utils/constants/strings/strings_soma_sub.dart';

class SomaSubtracaoTemplate extends StatelessWidget {
  final double width;
  const SomaSubtracaoTemplate({
    Key? key,
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
                StringsAndAssetsModel(
                  title: CoreStringsSomaSub.text1_SomaSub,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
