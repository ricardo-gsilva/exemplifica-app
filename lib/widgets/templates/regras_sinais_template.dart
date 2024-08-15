import 'package:exemplifica/utils/constants/strings/strings_regras_sinais.dart';
import 'package:exemplifica/widgets/atoms/custom_image_asset.dart';
import 'package:exemplifica/widgets/atoms/custom_text.dart';
import 'package:flutter/material.dart';

class RegrasSinaisTemplate extends StatelessWidget {
  final double width;
  const RegrasSinaisTemplate({
    Key? key,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          CustomText(
            title: CoreStringsRegrasSinais.text1_RegraSinal,
          ),
          CustomImageAsset(
            asset: "images/regras_sinal/regras_sinais_2.png",
            width: width * 0.6,
          ),
          CustomText(
            title: CoreStringsRegrasSinais.text2_RegraSinal,
          ),
          CustomText(
            title: CoreStringsRegrasSinais.text3_RegraSinal,
          ),
          CustomImageAsset(
            asset: "images/regras_sinal/regras_sinais_5.png",
            width: width * 0.4,
          ),
          CustomText(
            title: CoreStringsRegrasSinais.text4_RegraSinal,
          ),
          CustomText(
            title: CoreStringsRegrasSinais.text5_RegraSinal,
          ),
          CustomImageAsset(
            asset: "images/regras_sinal/regras_sinais_3.png",
            width: width * 0.4,
          ),
          CustomText(
            title: CoreStringsRegrasSinais.text6_RegraSinal,
          ),
          CustomText(
            title: CoreStringsRegrasSinais.text7_RegraSinal,
          ),
          CustomText(
            title: CoreStringsRegrasSinais.text8_RegraSinal,
            color: Colors.red,
          ),
          CustomText(
            title: CoreStringsRegrasSinais.text9_RegraSinal,
            color: Colors.red,
          ),
          CustomText(
            title: CoreStringsRegrasSinais.text10_RegraSinal,
            color: Colors.red,
          ),
          CustomText(
            title: CoreStringsRegrasSinais.text11_RegraSinal,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 40),
            child: CustomText(
              title: CoreStringsRegrasSinais.text12_RegraSinal,
            ),
          ),
        ],
      ),
    );
  }
}
