import 'package:exemplifica/utils/person_icons.dart';
import 'package:exemplifica/utils/constants/core_fontSize.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/view/atoms/custom_icon_button.dart';
import 'package:exemplifica/view/atoms/custom_text.dart';
import 'package:exemplifica/view/molecules/custom_scaffold.dart';
import 'package:exemplifica/view/page/calc_equacao_2_page.dart';
import 'package:exemplifica/view/templates/equacao_2_template.dart';
import 'package:flutter/material.dart';

class Equacao2Page extends StatelessWidget {
  const Equacao2Page({super.key});
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return CustomScaffold(
      titleAppBar: CustomText(
        title: CoreStrings.titleEquacao2,
        fontSize: CoreFontSize.h_22,
      ),
      leading: true,
      actions: [
        CustomIconButton(
          icon: Person.calc,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => CalcEquacao2Page()));
          },
        ),
      ],
      body: Equacao2Template(
        width: width,
        height: height,
      ),
    );
  }
}