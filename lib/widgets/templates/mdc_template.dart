import 'package:exemplifica/utils/constants/strings/strings_mdc.dart';
import 'package:exemplifica/widgets/atoms/custom_image_asset.dart';
import 'package:exemplifica/widgets/atoms/custom_text.dart';
import 'package:flutter/material.dart';

class MdcTemplate extends StatelessWidget {
  final double width;
  const MdcTemplate({
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
              title: CoreStringsMdc.text1_mdc,
            ),
            CustomText(
              title: CoreStringsMdc.text2_mdc,
              color: Colors.red,
            ),
            CustomText(
              title: CoreStringsMdc.text3_mdc,
            ),
            CustomImageAsset(
              asset: "images/operacoes/mdc/mdc_2.png",
              width: width * 0.7,
            ),
            CustomText(
              title: CoreStringsMdc.text4_mdc,
            ),
            CustomImageAsset(
              asset: "images/operacoes/mdc/mdc_3.png",
              width: width * 0.7,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 35),
              child: CustomText(
                title: CoreStringsMdc.text5_mdc,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
