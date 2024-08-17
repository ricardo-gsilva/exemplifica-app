import 'package:flutter/material.dart';
import 'package:exemplifica/utils/constants/strings/strings_juros_compostos.dart';
import 'package:exemplifica/widgets/atoms/custom_image_asset.dart';
import 'package:exemplifica/widgets/atoms/custom_text.dart';

class JurosCompostosTemplate extends StatelessWidget {
  final double width;
  const JurosCompostosTemplate({
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
            CustomText(
              title: CoreStringsJurosCompostos.text1_JurosCompostos,
            ),
            CustomText(
              title: CoreStringsJurosCompostos.text2_JurosCompostos,
            ),
            CustomText(
              title: CoreStringsJurosCompostos.text3_JurosCompostos,
            ),
            CustomText(
              title: CoreStringsJurosCompostos.text4_JurosCompostos,
            ),
            CustomText(
              title: CoreStringsJurosCompostos.text5_JurosCompostos,
            ),
            CustomImageAsset(
              asset: "images/operacoes/juros_compostos/jurosCompostos_2.png",
              width: width * 0.6,
            ),
            CustomText(
              title: CoreStringsJurosCompostos.text6_JurosCompostos,
            ),
            CustomText(
              title: CoreStringsJurosCompostos.text8_JurosCompostos,
            ),
            CustomText(
              title: CoreStringsJurosCompostos.text9_JurosCompostos,
            ),
            CustomText(
              title: CoreStringsJurosCompostos.text10_JurosCompostos,
            ),
            CustomImageAsset(
              asset: "images/operacoes/juros_compostos/jurosCompostos_3.png",
              width: width * 0.8,
            ),
            CustomText(
              title: CoreStringsJurosCompostos.text11_JurosCompostos,
            ),
            CustomImageAsset(
              asset: "images/operacoes/juros_compostos/jurosCompostos_4.png",
              width: width * 0.8,
            ),
            CustomText(
              title: CoreStringsJurosCompostos.text12_JurosCompostos,
            ),
            CustomText(
              title: CoreStringsJurosCompostos.text13_JurosCompostos,
            ),
            CustomText(
              title: CoreStringsJurosCompostos.text14_JurosCompostos,
            ),
            CustomText(
              title: CoreStringsJurosCompostos.text15_JurosCompostos,
            ),
            CustomImageAsset(
              asset: "images/operacoes/juros_compostos/jurosCompostos_5.png",
              width: width * 0.8,
            ),
            CustomText(
              title: CoreStringsJurosCompostos.text16_JurosCompostos,
            ),
            CustomText(
              title: CoreStringsJurosCompostos.text17_JurosCompostos,
            ),
            CustomImageAsset(
              asset: "images/operacoes/juros_compostos/jurosCompostos_6.png",
              width: width * 0.45,
            ),
            CustomText(
              title: CoreStringsJurosCompostos.text18_JurosCompostos,
            ),
            CustomImageAsset(
              asset: "images/operacoes/juros_compostos/jurosCompostos_7.png",
              width: width * 0.5,
            ),
            CustomText(
              title: CoreStringsJurosCompostos.text19_JurosCompostos,
            ),
            CustomImageAsset(
              asset: "images/operacoes/juros_compostos/jurosCompostos_8.png",
              width: width * 0.65,
            ),
            CustomText(
              title: CoreStringsJurosCompostos.text20_JurosCompostos,
            ),
            CustomImageAsset(
              asset: "images/operacoes/juros_compostos/jurosCompostos_9.png",
              width: width * 0.5,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: CustomText(
                title: CoreStringsJurosCompostos.text21_JurosCompostos,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
