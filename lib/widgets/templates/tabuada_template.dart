// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:exemplifica/utils/constants/strings/strings_tabuada.dart';
import 'package:exemplifica/widgets/atoms/custom_image_asset.dart';
import 'package:exemplifica/widgets/atoms/custom_text.dart';

class TabuadaTemplate extends StatelessWidget {
  final double width;
  const TabuadaTemplate({
    Key? key,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          CustomText(
            title: CoreStringsTabuada.text1_tabuada,
          ),
          CustomText(
            title: CoreStringsTabuada.text2_tabuada,
          ),
          CustomImageAsset(
            asset: "images/operacoes/tabuada/tabuada_2.png",
            width: width * 0.2,
          ),
          CustomText(
            title: CoreStringsTabuada.text3_tabuada,
          ),
          CustomText(
            title: CoreStringsTabuada.text4_tabuada,
          ),
          CustomImageAsset(
            asset: "images/operacoes/tabuada/tabuada_3.png",
            width: width * 0.35,
          ),
          CustomText(
            title: CoreStringsTabuada.text5_tabuada,
          ),
          CustomImageAsset(
            asset: "images/operacoes/tabuada/tabuada_4.png",
            width: width * 0.9,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: CustomText(
              title: CoreStringsTabuada.text6_tabuada,
            ),
          ),
        ],
      ),
    );
  }
}
