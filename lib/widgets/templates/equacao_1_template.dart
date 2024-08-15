import 'package:flutter/material.dart';
import 'package:exemplifica/utils/constants/strings/strings_equacao_1.dart';
import 'package:exemplifica/widgets/atoms/custom_image_asset.dart';
import 'package:exemplifica/widgets/atoms/custom_text.dart';

class Equacao1Template extends StatelessWidget {
  final double width;
  const Equacao1Template({
    Key? key,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomText(
            title: CoreStringsEquacao1.text1_Equacao1,
            fontSize: 16,
          ),
          CustomImageAsset(
            asset: "images/operacoes/equacao_1/equacao1_2.png",
            width: width * 0.6,
          ),
          CustomText(
            title: CoreStringsEquacao1.text2_Equacao1,
            fontSize: 16,
          ),
          CustomImageAsset(
            asset: "images/operacoes/equacao_1/equacao1_3.png",
            width: width * 0.6,
          ),
          CustomText(
            title: CoreStringsEquacao1.text3_Equacao1,
            fontSize: 16,
          ),
          CustomImageAsset(
            asset: "images/operacoes/equacao_1/equacao1_4.png",
            width: width * 0.6,
          ),
          CustomText(
            title: CoreStringsEquacao1.text4_Equacao1,
            fontSize: 16,
          ),
          CustomImageAsset(
            asset: "images/operacoes/equacao_1/equacao1_5.png",
            width: width * 0.4,
          ),
          CustomText(
            title: CoreStringsEquacao1.text5_Equacao1,
            fontSize: 16,
          ),
          CustomImageAsset(
            asset: "images/operacoes/equacao_1/equacao1_6.png",
            width: width * 0.4,
          ),
          CustomText(
            title: CoreStringsEquacao1.text6_Equacao1,
            fontSize: 16,
          ),
          CustomImageAsset(
            asset: "images/operacoes/equacao_1/equacao1_7.png",
            width: width * 0.6,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: CustomText(
              title: CoreStringsEquacao1.text7_Equacao1,
              fontSize: 16,
            ),
          ),     
        ],
      ),
    );
  }
}
