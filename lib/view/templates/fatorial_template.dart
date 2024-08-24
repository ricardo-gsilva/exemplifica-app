import 'package:exemplifica/model/assets_model.dart';
import 'package:exemplifica/utils/constants/core_fontSize.dart';
import 'package:exemplifica/utils/constants/core_keys.dart';
import 'package:exemplifica/utils/constants/core_strings_assets.dart';
import 'package:exemplifica/utils/constants/strings/strings_fatorial.dart';
import 'package:exemplifica/view/molecules/content_list.dart';
import 'package:flutter/material.dart';

class FatorialTemplate extends StatelessWidget {
  final double width;
  final double height;
  const FatorialTemplate({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      key: Key(CoreKeys.fatorialTemplate),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            ContentList(
              stringsAndAssets: [
                StringsAndAssetsModel(title: CoreStringsFatorial.text1_Fatorial),                
                StringsAndAssetsModel(title: CoreStringsAssets.fatorial_assets_2, width: width, height: height * 0.1),
                StringsAndAssetsModel(title: CoreStringsFatorial.text2_Fatorial),
                StringsAndAssetsModel(title: CoreStringsFatorial.text3_Fatorial, fontSize: CoreFontSize.h_20, color: Colors.red, fontWeight: FontWeight.bold),
                StringsAndAssetsModel(title: CoreStringsFatorial.text4_Fatorial),
                StringsAndAssetsModel(title: CoreStringsAssets.fatorial_assets_4, width: width),
                StringsAndAssetsModel(title: CoreStringsFatorial.text5_Fatorial),
                StringsAndAssetsModel(title: CoreStringsAssets.fatorial_assets_5, width: width, height: height * 0.1),
                StringsAndAssetsModel(title: CoreStringsFatorial.text6_Fatorial),
                StringsAndAssetsModel(title: CoreStringsAssets.fatorial_assets_6, width: width, height: height * 0.1),
                StringsAndAssetsModel(title: CoreStringsFatorial.text7_Fatorial),
                StringsAndAssetsModel(title: CoreStringsAssets.fatorial_assets_7, width: width, height: height * 0.1),
                StringsAndAssetsModel(title: CoreStringsFatorial.text8_Fatorial, fontSize: CoreFontSize.h_20, fontWeight: FontWeight.bold, textAlign: TextAlign.center),
                StringsAndAssetsModel(title: CoreStringsAssets.fatorial_assets_9, width: width, height: height * 0.1),
                StringsAndAssetsModel(title: CoreStringsFatorial.text9_Fatorial),
                StringsAndAssetsModel(title: CoreStringsAssets.fatorial_assets_10, width: width, height: height * 0.2),
                StringsAndAssetsModel(title: CoreStringsFatorial.text11_Fatorial, fontSize: CoreFontSize.h_20, fontWeight: FontWeight.bold, textAlign: TextAlign.center),
                StringsAndAssetsModel(title: CoreStringsAssets.fatorial_assets_12, width: width, height: height * 0.2),
                StringsAndAssetsModel(title: CoreStringsFatorial.text12_Fatorial, textAlign: TextAlign.center),
                StringsAndAssetsModel(title: CoreStringsAssets.fatorial_assets_13, width: width, height: height * 0.1),
                StringsAndAssetsModel(title: CoreStringsFatorial.text13_Fatorial, textAlign: TextAlign.center),
                StringsAndAssetsModel(title: CoreStringsAssets.fatorial_assets_14, width: width, height: height * 0.1),
                StringsAndAssetsModel(title: CoreStringsFatorial.text14_Fatorial, textAlign: TextAlign.center, fontSize: CoreFontSize.h_20, fontWeight: FontWeight.bold),
                StringsAndAssetsModel(title: CoreStringsFatorial.text15_Fatorial),
                StringsAndAssetsModel(title: CoreStringsAssets.fatorial_assets_16, width: width, height: height * 0.1),
                StringsAndAssetsModel(title: CoreStringsFatorial.text16_Fatorial),
                StringsAndAssetsModel(title: CoreStringsAssets.fatorial_assets_17, width: width, height: height * 0.15),
                StringsAndAssetsModel(title: CoreStringsFatorial.text17_Fatorial),
                StringsAndAssetsModel(title: CoreStringsFatorial.text18_Fatorial, fontSize: CoreFontSize.h_20, fontWeight: FontWeight.bold, textAlign: TextAlign.center),
                StringsAndAssetsModel(title: CoreStringsFatorial.text19_Fatorial),
                StringsAndAssetsModel(title: CoreStringsAssets.fatorial_assets_19, width: width, height: height * 0.15),
                StringsAndAssetsModel(title: CoreStringsFatorial.text20_Fatorial, textAlign: TextAlign.center),
                StringsAndAssetsModel(title: CoreStringsAssets.fatorial_assets_20, width: width, height: height * 0.15),
                StringsAndAssetsModel(title: CoreStringsFatorial.text13_Fatorial, textAlign: TextAlign.center),
                StringsAndAssetsModel(title: CoreStringsAssets.fatorial_assets_21, width: width, height: height * 0.15),
              ],
            ),          
        ],),
      ),
    );
  }
}
