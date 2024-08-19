import 'package:exemplifica/utils/constants/core_strings_assets.dart';
import 'package:exemplifica/widgets/molecules/content_list.dart';
import 'package:flutter/material.dart';
import 'package:exemplifica/utils/constants/strings/strings_equacao_1.dart';

class Equacao1Template extends StatelessWidget {
  final double width;
  const Equacao1Template({
    Key? key,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            ContentList(
              width: width,
              contentList: [
                CoreStringsEquacao1.text1_Equacao1,
                CoreStringsAssets.equacao_1_assets_2,
                CoreStringsEquacao1.text2_Equacao1,
                CoreStringsAssets.equacao_1_assets_3,
                CoreStringsEquacao1.text3_Equacao1,
                CoreStringsAssets.equacao_1_assets_4,
                CoreStringsEquacao1.text4_Equacao1,
                CoreStringsAssets.equacao_1_assets_5,
                CoreStringsEquacao1.text5_Equacao1,
                CoreStringsAssets.equacao_1_assets_6,
                CoreStringsEquacao1.text6_Equacao1,
                CoreStringsAssets.equacao_1_assets_7,
                CoreStringsEquacao1.text7_Equacao1,
              ],
            ),            
          ],
        ),
      ),
    );
  }
}
