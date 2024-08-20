import 'package:exemplifica/utils/constants/core_fontSize.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/widgets/atoms/custom_appBar.dart';
import 'package:exemplifica/widgets/atoms/custom_icon_button.dart';
import 'package:exemplifica/widgets/atoms/custom_text.dart';
import 'package:exemplifica/widgets/molecules/custom_scaffold.dart';
import 'package:exemplifica/widgets/page/home_page.dart';
import 'package:exemplifica/widgets/templates/calc_equacao_1_template.dart';
import 'package:flutter/material.dart';

class CalcEquacao1Page extends StatelessWidget {
  const CalcEquacao1Page({super.key});

   @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      titleAppBar: CustomAppBar(
        title: CustomText(
          title: CoreStrings.titleEquacao1,
          fontSize: CoreFontSize.h_22,
        ),
      ),
      leading: true,
      actions: [
        CustomIconButton(
          icon: Icons.home,
          onPressed: () {
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => HomePage()),
                (Route<dynamic> route) => false);
          },
        )
      ],
      body: CalcEquacao1Template(),
    );
  }
}