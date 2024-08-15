import 'package:flutter/material.dart';
import 'package:exemplifica/utils/constants/strings/strings_regra_de_3.dart';
import 'package:exemplifica/widgets/atoms/custom_image_asset.dart';
import 'package:exemplifica/widgets/atoms/custom_text.dart';

class RegraDe3Template extends StatelessWidget {
  final double width;
  const RegraDe3Template({
    Key? key,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          CustomText(
            title: CoreStringsRegraDe3.text1_regraDe3,
          ),
          CustomText(
            title: CoreStringsRegraDe3.text2_regraDe3,
            textAlign: TextAlign.center,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          CustomImageAsset(
            asset: "images/operacoes/regra_de3/regra_de3_3.png",
            width: width * 0.6,
          ),
          CustomText(
            title: CoreStringsRegraDe3.text3_regraDe3,
          ),
          CustomImageAsset(
            asset: "images/operacoes/regra_de3/regra_de3_4.png",
            width: width * 0.5,
          ),
          CustomText(
            title: CoreStringsRegraDe3.text4_regraDe3,
            color: Colors.red.shade400,
          ),
          CustomText(
            title: CoreStringsRegraDe3.text5_regraDe3,
          ),
          CustomImageAsset(
            asset: "images/operacoes/regra_de3/regra_de3_5.png",
            width: width * 0.4,
          ),
          CustomText(
            title: CoreStringsRegraDe3.text6_regraDe3,
          ),
          CustomImageAsset(
            asset: "images/operacoes/regra_de3/regra_de3_6.png",
            width: width * 0.35,
          ),
          CustomText(
            title: CoreStringsRegraDe3.text7_regraDe3,
          ),
          CustomText(
            title: CoreStringsRegraDe3.text10_regraDe3,
            textAlign: TextAlign.center,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          CustomText(
            title: CoreStringsRegraDe3.text8_regraDe3,
          ),
          CustomText(
            title: CoreStringsRegraDe3.text9_regraDe3,
          ),
          CustomImageAsset(
            asset: "images/operacoes/regra_de3/regra_de3_8.png",
            width: width * 0.8,
          ),
          CustomText(
            title: CoreStringsRegraDe3.text11_regraDe3,
          ),
          CustomImageAsset(
            asset: "images/operacoes/regra_de3/regra_de3_9.png",
            width: width * 0.35,
          ),
          CustomText(
            title: CoreStringsRegraDe3.text12_regraDe3,
          ),
          CustomImageAsset(
            asset: "images/operacoes/regra_de3/regra_de3_10.png",
            width: width * 0.28,
          ),
          CustomText(
            title: CoreStringsRegraDe3.text13_regraDe3,
          ),
          CustomImageAsset(
            asset: "images/operacoes/regra_de3/regra_de3_11.png",
            width: width * 0.45,
          ),
          CustomText(
            title: CoreStringsRegraDe3.text14_regraDe3,
          ),
          CustomImageAsset(
            asset: "images/operacoes/regra_de3/regra_de3_12.png",
            width: width * 0.35,
          ),
          CustomText(
            title: CoreStringsRegraDe3.text15_regraDe3,
          ),
          CustomImageAsset(
            asset: "images/operacoes/regra_de3/regra_de3_13.png",
            width: width * 0.4,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: CustomText(
              title: CoreStringsRegraDe3.text16_regraDe3,
            ),
          ),
        ],
      ),
    );
  }
}
