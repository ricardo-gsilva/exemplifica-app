import 'package:flutter/material.dart';
import 'package:exemplifica/utils/constants/strings/strings_expoentes.dart';
import 'package:exemplifica/widgets/atoms/custom_image_asset.dart';
import 'package:exemplifica/widgets/atoms/custom_text.dart';

class ExpoentesTemplate extends StatelessWidget {
  final double width;
  const ExpoentesTemplate({
    Key? key,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          CustomText(
            title: CoreStringsExpoentes.text1_expoentes,
          ),
          CustomImageAsset(
            asset: "images/expoentes/expoentes_2.png",
            width: width * 0.9,
          ),
          CustomText(
            title: CoreStringsExpoentes.text2_expoentes,
          ),
          CustomImageAsset(
            asset: "images/expoentes/expoentes_3.png",
            width: width * 0.25,
          ),
          CustomText(
            title: CoreStringsExpoentes.text3_expoentes,
          ),
          CustomImageAsset(
            asset: "images/expoentes/expoentes_4.png",
            width: width * 0.2,
          ),
          CustomText(
            title: CoreStringsExpoentes.text4_expoentes,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: CustomImageAsset(
              asset: "images/expoentes/expoentes_5.png",
              width: width * 0.2,
            ),
          ),
        ],
      ),
    );
  }
}
