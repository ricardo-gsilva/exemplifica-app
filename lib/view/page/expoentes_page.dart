import 'package:exemplifica/model/assets_model.dart';
import 'package:exemplifica/utils/constants/core_fontSize.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/utils/constants/core_strings_assets.dart';
import 'package:exemplifica/utils/constants/strings/strings_expoentes.dart';
import 'package:exemplifica/view/atoms/custom_icon_button.dart';
import 'package:exemplifica/view/atoms/custom_text.dart';
import 'package:exemplifica/view/molecules/custom_scaffold.dart';
import 'package:exemplifica/view/page/home_page.dart';
import 'package:exemplifica/view/templates/page_template.dart';
import 'package:flutter/material.dart';

class ExpoentesPage extends StatelessWidget {
  const ExpoentesPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return CustomScaffold(
      titleAppBar: CustomText(
        title: CoreStrings.titleExpoentes,
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
          StringsAndAssetsModel(
            title: CoreStringsExpoentes.text1_expoentes,
          ),
          StringsAndAssetsModel(
              title: CoreStringsAssets.expoentes_assets_2,
              height: height * 0.1),
          StringsAndAssetsModel(
            title: CoreStringsExpoentes.text2_expoentes,
          ),
          StringsAndAssetsModel(
              title: CoreStringsAssets.expoentes_assets_3,
              height: height * 0.04),
          StringsAndAssetsModel(
            title: CoreStringsExpoentes.text3_expoentes,
          ),
          StringsAndAssetsModel(
              title: CoreStringsAssets.expoentes_assets_4,
              height: height * 0.05),
          StringsAndAssetsModel(
            title: CoreStringsExpoentes.text4_expoentes,
          ),
          StringsAndAssetsModel(
              title: CoreStringsAssets.expoentes_assets_5,
              height: height * 0.05),
        ],
      ),
    );
  }
}
