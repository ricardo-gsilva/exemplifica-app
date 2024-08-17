import 'package:exemplifica/utils/constants/strings/strings_fatorial.dart';
import 'package:exemplifica/widgets/atoms/custom_image_asset.dart';
import 'package:exemplifica/widgets/atoms/custom_text.dart';
import 'package:flutter/material.dart';

class FatorialTemplate extends StatelessWidget {
  final double width;
  const FatorialTemplate({
    Key? key,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
          CustomText(
              title: CoreStringsFatorial.text1_Fatorial,
              fontSize: 16,
            ),
            CustomImageAsset(
              asset: "images/operacoes/fatorial/fatorial_2.png",
              width: width * 0.7,
            ),  
          CustomText(
              title: CoreStringsFatorial.text2_Fatorial,
              fontSize: 16,
            ),
          CustomText(
              title: CoreStringsFatorial.text3_Fatorial,
              fontSize: 20,
            ),
            CustomText(
              title: CoreStringsFatorial.text4_Fatorial,
              fontSize: 16,
            ),
            CustomImageAsset(
              asset: "images/operacoes/fatorial/fatorial_4.png",
              width: width * 0.4,
            ),
          CustomText(
              title: CoreStringsFatorial.text5_Fatorial,
              fontSize: 16,
            ),
          CustomImageAsset(
              asset: "images/operacoes/fatorial/fatorial_5.png",
              width: width * 0.5,
            ),
          CustomText(
              title: CoreStringsFatorial.text6_Fatorial,
              fontSize: 16,
            ),
          CustomImageAsset(
              asset: "images/operacoes/fatorial/fatorial_6.png",
              width: width * 0.4,
            ),
          CustomText(
              title: CoreStringsFatorial.text7_Fatorial,
              fontSize: 16,
            ),
          CustomImageAsset(
              asset: "images/operacoes/fatorial/fatorial_7.png",
              width: width * 0.4,
            ),
            CustomText(
              title: CoreStringsFatorial.text8_Fatorial,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              textAlign: TextAlign.center,            
            ),
          CustomImageAsset(
              asset: "images/operacoes/fatorial/fatorial_9.png",
              width: width * 0.4,
            ),
          CustomText(
              title: CoreStringsFatorial.text9_Fatorial,
              fontSize: 16,
            ),
          CustomImageAsset(
              asset: "images/operacoes/fatorial/fatorial_10.png",
              width: width * 0.8,
            ),
          CustomText(
              title: CoreStringsFatorial.text10_Fatorial,
              fontSize: 16,
            ),
          CustomText(
              title: CoreStringsFatorial.text11_Fatorial,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              textAlign: TextAlign.center,
            ),
          CustomImageAsset(
              asset: "images/operacoes/fatorial/fatorial_12.png",
              width: width * 0.9,
            ),
          CustomText(
              title: CoreStringsFatorial.text12_Fatorial,
              fontSize: 16,
            ),
          CustomImageAsset(
              asset: "images/operacoes/fatorial/fatorial_13.png",
              width: width * 0.5,
            ),
          CustomText(
              title: CoreStringsFatorial.text13_Fatorial,
              fontSize: 16,
            ),
          CustomImageAsset(
              asset: "images/operacoes/fatorial/fatorial_14.png",
              width: width * 0.55,
            ),
          CustomText(
              title: CoreStringsFatorial.text14_Fatorial,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              textAlign: TextAlign.center,
            ),
          CustomText(
              title: CoreStringsFatorial.text15_Fatorial,
              fontSize: 16,
            ),
          CustomImageAsset(
              asset: "images/operacoes/fatorial/fatorial_16.png",
              width: width * 0.15,
            ),
          CustomText(
              title: CoreStringsFatorial.text16_Fatorial,
              fontSize: 16,
            ),        
          CustomImageAsset(
              asset: "images/operacoes/fatorial/fatorial_17.png",
              width: width * 0.5,
            ),
          CustomText(
              title: CoreStringsFatorial.text17_Fatorial,
              fontSize: 16,
            ),        
          CustomText(
              title: CoreStringsFatorial.text18_Fatorial,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              textAlign: TextAlign.center,
            ),
          CustomText(
              title: CoreStringsFatorial.text19_Fatorial,
              fontSize: 16,
            ),
          CustomImageAsset(
              asset: "images/operacoes/fatorial/fatorial_19.png",
              width: width * 0.8,
            ),
          CustomText(
              title: CoreStringsFatorial.text20_Fatorial,
              fontSize: 16,
            ),
          CustomImageAsset(
              asset: "images/operacoes/fatorial/fatorial_20.png",
              width: width * 0.55,
            ),
          CustomText(
              title: CoreStringsFatorial.text21_Fatorial,
              fontSize: 16,
            ),
          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: CustomImageAsset(
                asset: "images/operacoes/fatorial/fatorial_21.png",
                width: width * 0.5,
              ),
          ),
        ],),
      ),
    );
  }
}
