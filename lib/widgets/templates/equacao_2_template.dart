import 'package:flutter/material.dart';
import 'package:exemplifica/utils/constants/strings/strings_equacao_2.dart';
import 'package:exemplifica/widgets/atoms/custom_image_asset.dart';
import 'package:exemplifica/widgets/atoms/custom_text.dart';

class Equacao2Template extends StatelessWidget {
  final double width;
  const Equacao2Template({
    Key? key,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomText(
            title: CoreStringsEquacao2.text1_Equacao2,
            fontSize: 16,
          ),
          CustomImageAsset(
            asset: "images/operacoes/equacao_2/equacao2_2.png",
            width: width * 0.7,
          ),
          CustomText(
            title: CoreStringsEquacao2.text2_Equacao2,
            fontSize: 16,
          ),          
          CustomText(
            title: CoreStringsEquacao2.text3_Equacao2,
            fontSize: 16,
          ),
          CustomText(
            title: CoreStringsEquacao2.text4_Equacao2,
            fontSize: 16,
          ),  
          CustomImageAsset(
            asset: "images/operacoes/equacao_2/equacao2_3.png",
            width: width * 0.5,
          ),
          CustomText(
            title: CoreStringsEquacao2.text5_Equacao2,
            fontSize: 16,
          ),  
          CustomImageAsset(
            asset: "images/operacoes/equacao_2/equacao2_4.png",
            width: width * 0.35,
          ),
          CustomText(
            title: CoreStringsEquacao2.text6_Equacao2,
            fontSize: 16,
          ),
          CustomImageAsset(
            asset: "images/operacoes/equacao_2/equacao2_5.png",
            width: width * 0.35,
          ),  
          CustomText(
            title: CoreStringsEquacao2.text7_Equacao2,
            fontSize: 16,
          ),
          CustomImageAsset(
            asset: "images/operacoes/equacao_2/equacao2_6.png",
            width: width * 0.35,
          ),
          CustomText(
            title: CoreStringsEquacao2.text8_Equacao2,
            fontSize: 16,
          ),
          CustomImageAsset(
            asset: "images/operacoes/equacao_2/equacao2_7.png",
            width: width * 0.35,
          ), 
          CustomText(
            title: CoreStringsEquacao2.text9_Equacao2,
            fontSize: 16,
          ),
          CustomImageAsset(
            asset: "images/operacoes/equacao_2/equacao2_8.png",
            width: width * 0.7,
          ),
          CustomText(
            title: CoreStringsEquacao2.text10_Equacao2,
            fontSize: 16,
          ),
          CustomImageAsset(
            asset: "images/operacoes/equacao_2/equacao2_17.png",
            width: width * 0.7,
          ),
          CustomText(
            title: CoreStringsEquacao2.text11_Equacao2,
            fontSize: 16,
          ),
          CustomImageAsset(
            asset: "images/operacoes/equacao_2/equacao2_12.png",
            width: width * 0.5,
          ),
          CustomText(
            title: CoreStringsEquacao2.text12_Equacao2,
            fontSize: 16,
          ),
          CustomText(
            title: CoreStringsEquacao2.text13_Equacao2,
            fontSize: 16,
          ),          
          CustomImageAsset(
            asset: "images/operacoes/equacao_2/equacao2_13.png",
            width: width * 0.7,
          ),
          CustomText(
            title: CoreStringsEquacao2.text14_Equacao2,
            fontSize: 16,
          ),
          CustomImageAsset(
            asset: "images/operacoes/equacao_2/equacao2_14.png",
            width: width * 0.7,
          ),
          CustomText(
            title: CoreStringsEquacao2.text15_Equacao2,
            fontSize: 16,
          ),
          CustomImageAsset(
            asset: "images/operacoes/equacao_2/equacao2_15.png",
            width: width * 0.7,
          ),
          CustomText(
            title: CoreStringsEquacao2.text16_Equacao2,
            fontSize: 16,
          ),
          CustomImageAsset(
            asset: "images/operacoes/equacao_2/equacao2_16.png",
            width: width * 0.7,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: CustomText(
              title: CoreStringsEquacao2.text16_Equacao2,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
