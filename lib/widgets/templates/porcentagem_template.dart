import 'package:exemplifica/utils/constants/strings/strings_porcentagem.dart';
import 'package:exemplifica/widgets/atoms/custom_image_asset.dart';
import 'package:exemplifica/widgets/atoms/custom_text.dart';
import 'package:flutter/material.dart';

class PorcentagemTemplate extends StatelessWidget {
  final double width;
  const PorcentagemTemplate({
    Key? key,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          CustomText(
            title: CoreStringsPorcentagem.text1_porcentagem,
          ),
          CustomText(
            title: CoreStringsPorcentagem.text2_porcentagem,
          ),
          CustomImageAsset(
            asset: "images/operacoes/porcentagem/porcentagem_2.png",
            width: width * 0.6,
          ),
          CustomText(
            title: CoreStringsPorcentagem.text3_porcentagem,
          ),
          CustomImageAsset(
            asset: "images/operacoes/porcentagem/porcentagem_3.png",
            width: width * 0.8,
          ),
          CustomText(
            title: CoreStringsPorcentagem.text4_porcentagem,
          ),
          CustomImageAsset(
            asset: "images/operacoes/porcentagem/porcentagem_4.png",
            width: width * 0.55,
          ),
          CustomText(
            title: CoreStringsPorcentagem.text5_porcentagem,
          ),
          CustomImageAsset(
            asset: "images/operacoes/porcentagem/porcentagem_5.png",
            width: width * 0.4,
          ),
          CustomText(
            title: CoreStringsPorcentagem.text6_porcentagem,
          ),
          CustomText(
            title: CoreStringsPorcentagem.text7_porcentagem,
          ),
          CustomText(
            title: CoreStringsPorcentagem.text8_porcentagem,
          ),
          CustomImageAsset(
            asset: "images/operacoes/porcentagem/porcentagem_6.png",
            width: width * 0.75,
          ),
          CustomText(
            title: CoreStringsPorcentagem.text9_porcentagem,
          ),
          CustomImageAsset(
            asset: "images/operacoes/porcentagem/porcentagem_7.png",
            width: width * 0.6,
          ),
          CustomText(
            title: CoreStringsPorcentagem.text10_porcentagem,
          ),
          CustomImageAsset(
            asset: "images/operacoes/porcentagem/porcentagem_8.png",
            width: width * 0.8,
          ),
          CustomText(
            title: CoreStringsPorcentagem.text11_porcentagem,
          ),
          CustomImageAsset(
            asset: "images/operacoes/porcentagem/porcentagem_9.png",
            width: width * 0.7,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: CustomText(
              title: CoreStringsPorcentagem.text12_porcentagem,
            ),
          ),
        ],
      ),
    );
  }
}
