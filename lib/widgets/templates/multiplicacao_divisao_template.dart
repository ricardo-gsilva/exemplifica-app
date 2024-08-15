// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:exemplifica/utils/constants/strings/strings_mult_div.dart';
import 'package:exemplifica/widgets/atoms/custom_image_asset.dart';
import 'package:exemplifica/widgets/atoms/custom_text.dart';
import 'package:flutter/material.dart';

class MultiplicacaoDivisaoTemplate extends StatelessWidget {
  final double width;
  const MultiplicacaoDivisaoTemplate({
    Key? key,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          CustomText(
            title: CoreStringsMultDiv.text1_MultiplicaDiv,
          ),
          CustomImageAsset(
            asset: "images/mult_div/multiplica_divi_2.png",
            width: width * 0.4,
          ),
          CustomText(
            title: CoreStringsMultDiv.text2_MultiplicaDiv,
          ),
          CustomText(
            title: CoreStringsMultDiv.text3_MultiplicaDiv,
          ),
          CustomImageAsset(
            asset: "images/mult_div/multiplica_divi_3.png",
            width: width * 0.4,
          ),
          CustomText(
            title: CoreStringsMultDiv.text4_MultiplicaDiv,
          ),
          CustomImageAsset(
            asset: "images/mult_div/multiplica_divi_4.png",
            width: width * 0.4,
          ),
          CustomText(
            title: CoreStringsMultDiv.text5_MultiplicaDiv,
          ),
          CustomImageAsset(
            asset: "images/mult_div/multiplica_divi_5.png",
            width: width * 0.4,
          ),
          CustomText(
            title: CoreStringsMultDiv.text6_MultiplicaDiv,
          ),
          CustomText(
            title: CoreStringsMultDiv.text7_MultiplicaDiv,
          ),
          CustomImageAsset(
            asset: "images/mult_div/multiplica_divi_11.png",
            width: width * 0.5,
          ),
          Icon(
            Icons.close,
            color: Colors.red,
            size: 50,
          ),
          CustomText(
            title: CoreStringsMultDiv.text8_MultiplicaDiv,
          ),
          CustomImageAsset(
            asset: "images/mult_div/multiplica_divi_12.png",
            width: width * 0.5,
          ),
          Icon(
            Icons.check,
            color: Colors.red,
            size: 50,
          ),
          CustomText(
            title: CoreStringsMultDiv.text9_MultiplicaDiv,
          ),
          CustomText(
            title: CoreStringsMultDiv.text10_MultiplicaDiv,
          ),
          CustomText(
            title: CoreStringsMultDiv.text11_MultiplicaDiv,
          ),
          CustomImageAsset(
            asset: "images/mult_div/multiplica_divi_8.png",
            width: width * 0.55,
          ),
          CustomText(
            title: CoreStringsMultDiv.text12_MultiplicaDiv,
          ),
          CustomImageAsset(
            asset: "images/mult_div/multiplica_divi_9.png",
            width: width * 0.35,
          ),
          CustomText(
            title: CoreStringsMultDiv.text13_MultiplicaDiv,
          ),
          CustomImageAsset(
            asset: "images/mult_div/multiplica_divi_10.png",
            width: width * 0.4,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 40),
            child: CustomText(
              title: CoreStringsMultDiv.text14_MultiplicaDiv,
            ),
          ),
        ],
      ),
    );
  }
}
