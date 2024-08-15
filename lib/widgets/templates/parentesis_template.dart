// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:exemplifica/utils/constants/strings/strings_parentesis.dart';
import 'package:exemplifica/widgets/atoms/custom_image_asset.dart';
import 'package:exemplifica/widgets/atoms/custom_text.dart';

class ParentesisTemplate extends StatelessWidget {
  final double width;
  const ParentesisTemplate({
    Key? key,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
          children: <Widget>[
            CustomText(title: CoreStringsParentesis.text1_parentesis,),
            CustomImageAsset(
              asset: "images/parentesis/parentesis_1.png",
              width: width * 0.6,
            ),
            CustomText(title: CoreStringsParentesis.text2_parentesis,),
            CustomImageAsset(
              asset: "images/parentesis/parentesis_2.png",
              width: width * 0.7,
            ),
            CustomText(title: CoreStringsParentesis.text3_parentesis,),
            CustomImageAsset(
              asset: "images/parentesis/parentesis_3.png",
              width: width * 0.4,
            ),
            CustomText(title: CoreStringsParentesis.text4_parentesis,),
            CustomImageAsset(
              asset: "images/parentesis/parentesis_4.png",
              width: width * 0.6,
            ),
            CustomText(title: CoreStringsParentesis.text5_parentesis,),
            CustomImageAsset(
              asset: "images/parentesis/parentesis_5.png",
              width: width * 0.6,
            ),
            CustomText(title: CoreStringsParentesis.text6_parentesis,),
            CustomImageAsset(
              asset: "images/parentesis/parentesis_6.png",
              width: width * 0.4,
            ),
            CustomText(title: CoreStringsParentesis.text7_parentesis,),
            Padding(
              padding: const EdgeInsets.only(bottom: 35),
              child: CustomImageAsset(
                asset: "images/parentesis/parentesis_7.png",
                width: width * 0.4,
              ),
            ),            
          ],
        ),
      );
  }
}
