import 'package:exemplifica/model/assets_model.dart';
import 'package:exemplifica/utils/constants/core_fontSize.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/utils/constants/core_strings_assets.dart';
import 'package:exemplifica/utils/constants/strings/strings_parentesis.dart';
import 'package:exemplifica/view/atoms/custom_icon_button.dart';
import 'package:exemplifica/view/atoms/custom_text.dart';
import 'package:exemplifica/view/molecules/custom_scaffold.dart';
import 'package:exemplifica/view/page/home_page.dart';
import 'package:exemplifica/view/templates/page_template.dart';
import 'package:flutter/material.dart';

class ParentesisPage extends StatelessWidget {
  const ParentesisPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return CustomScaffold(
      titleAppBar: CustomText(
        title: CoreStrings.titleParentesis,
        fontSize: CoreFontSize.h_22,
      ),
      leading: true,
      actions: [
        CustomIconButton(
          icon: Icons.home,
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          },
        ),
      ],
      body: PageTemplate(
        width: width,
        height: height,
        stringsAndAssetsList: [
          StringsAndAssetsModel(title: CoreStringsParentesis.text1_parentesis),
          StringsAndAssetsModel(
              title: CoreStringsAssets.parentesis_assets_1,
              height: height * 0.05),
          StringsAndAssetsModel(title: CoreStringsParentesis.text2_parentesis),
          StringsAndAssetsModel(
              title: CoreStringsAssets.parentesis_assets_2,
              height: height * 0.1),
          StringsAndAssetsModel(title: CoreStringsParentesis.text3_parentesis),
          StringsAndAssetsModel(
              title: CoreStringsAssets.parentesis_assets_3,
              height: height * 0.1),
          StringsAndAssetsModel(title: CoreStringsParentesis.text4_parentesis),
          StringsAndAssetsModel(title: CoreStringsParentesis.text5_parentesis),
          StringsAndAssetsModel(
              title: CoreStringsAssets.parentesis_assets_5,
              height: height * 0.05),
          StringsAndAssetsModel(title: CoreStringsParentesis.text6_parentesis),
          StringsAndAssetsModel(
              title: CoreStringsAssets.parentesis_assets_6,
              height: height * 0.05),
          StringsAndAssetsModel(title: CoreStringsParentesis.text7_parentesis),
          StringsAndAssetsModel(
              title: CoreStringsAssets.parentesis_assets_7,
              height: height * 0.1),
        ],
      ),
    );
  }
}
