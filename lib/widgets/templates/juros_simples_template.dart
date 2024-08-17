// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:exemplifica/utils/constants/strings/strings_juros_simples.dart';
import 'package:exemplifica/widgets/atoms/custom_image_asset.dart';
import 'package:exemplifica/widgets/atoms/custom_text.dart';

class JurosSimplesTemplate extends StatelessWidget {
  final double width;
  const JurosSimplesTemplate({
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
              title: CoreStringsJurosSimples.text1_JurosSimples,
            ),
            CustomText(
              title: CoreStringsJurosSimples.text2_JurosSimples,
            ),
            CustomText(
              title: CoreStringsJurosSimples.text3_JurosSimples,
            ),
            CustomText(
              title: CoreStringsJurosSimples.text4_JurosSimples,
            ),
            CustomImageAsset(
              asset: "images/operacoes/juros_simples/jurosSimples_2.png",
              width: width * 0.5,
            ),
            CustomText(
              title: CoreStringsJurosSimples.text5_JurosSimples,
            ),
            CustomText(
              title: CoreStringsJurosSimples.text6_JurosSimples,
            ),
            CustomImageAsset(
              asset: "images/operacoes/juros_simples/jurosSimples_3.png",
              width: width * 0.5,
            ),
            CustomText(
              title: CoreStringsJurosSimples.text7_JurosSimples,
            ),
            CustomText(
              title: CoreStringsJurosSimples.text8_JurosSimples,
            ),
            CustomImageAsset(
              asset: "images/operacoes/juros_simples/jurosSimples_4.png",
              width: width * 0.9,
            ),
            CustomImageAsset(
              asset: "images/operacoes/juros_simples/jurosSimples_5.png",
              width: width * 0.8,
            ),
            CustomImageAsset(
              asset: "images/operacoes/juros_simples/jurosSimples_6.png",
              width: width * 0.65,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 25),
              child: CustomText(
                title: CoreStringsJurosSimples.text9_JurosSimples,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
