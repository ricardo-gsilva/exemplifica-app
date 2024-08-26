import 'package:exemplifica/model/assets_model.dart';
import 'package:exemplifica/utils/constants/core_fontSize.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/utils/constants/strings/strings_soma_sub.dart';
import 'package:exemplifica/view/atoms/custom_icon_button.dart';
import 'package:exemplifica/view/atoms/custom_text.dart';
import 'package:exemplifica/view/molecules/custom_scaffold.dart';
import 'package:exemplifica/view/page/home_page.dart';
import 'package:exemplifica/view/templates/page_template.dart';
import 'package:flutter/material.dart';

class SomaSubtracaoPage extends StatelessWidget {
  const SomaSubtracaoPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return CustomScaffold(
      titleAppBar: CustomText(
        title: CoreStrings.titleSomaSub,
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
          StringsAndAssetsModel(title: CoreStringsSomaSub.text1_SomaSub),
        ],
      ),
    );
  }
}
