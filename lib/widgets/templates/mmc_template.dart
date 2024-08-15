import 'package:exemplifica/widgets/atoms/custom_image_asset.dart';
import 'package:exemplifica/widgets/atoms/custom_text.dart';
import 'package:flutter/material.dart';

import 'package:exemplifica/utils/constants/strings/strings_mmc.dart';

class MmcTemplate extends StatelessWidget {
  final double width;
  const MmcTemplate({
    Key? key,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          CustomText(
            title: CoreStringsMmc.text1_mmc,
          ),
          CustomText(
            title: CoreStringsMmc.text2_mmc,
          ),
          CustomImageAsset(
            asset: "images/operacoes/mmc/mmc_2.png",
            width: width * 0.9,
          ),
          CustomText(
            title: CoreStringsMmc.text3_mmc,
          ),
          CustomText(
            title: CoreStringsMmc.text4_mmc,
          ),
          CustomImageAsset(
            asset: "images/operacoes/mmc/mmc_3.png",
            width: width * 0.45,
          ),
          CustomText(
            title: CoreStringsMmc.text5_mmc,
          ),
          CustomImageAsset(
            asset: "images/operacoes/mmc/mmc_4.png",
            width: width * 0.9,
          ),
          CustomText(
            title: CoreStringsMmc.text6_mmc,
          ),
          CustomImageAsset(
            asset: "images/operacoes/mmc/mmc_5.png",
            width: width * 0.45,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: CustomText(
              title: CoreStringsMmc.text7_mmc,
            ),
          ),
        ],
      ),
    );
  }
}
