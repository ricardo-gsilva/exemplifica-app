import 'package:exemplifica/utils/constants/core_colors.dart';
import 'package:exemplifica/utils/constants/strings/strings_equacao_1.dart';
import 'package:exemplifica/widgets/atoms/custom_appBar.dart';
import 'package:exemplifica/widgets/atoms/custom_icon_button.dart';
import 'package:exemplifica/widgets/atoms/custom_text.dart';
import 'package:exemplifica/widgets/templates/equacao_1_template.dart';
import 'package:flutter/material.dart';

class Equacao1Page extends StatelessWidget {
  const Equacao1Page({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: CoreColors.colorBackground,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          leading: CustomIconButton(),
          title: CustomText(
            title: CoreStringsEquacao1.titleEquacao1,
          ),
        ),
      ),
      body: Equacao1Template(
        width: width,
      ),
    );
  }
}
