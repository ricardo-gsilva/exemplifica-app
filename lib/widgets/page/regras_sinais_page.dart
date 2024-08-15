import 'package:exemplifica/utils/constants/core_colors.dart';
import 'package:exemplifica/utils/constants/strings/strings_regras_sinais.dart';
import 'package:exemplifica/widgets/atoms/custom_appBar.dart';
import 'package:exemplifica/widgets/atoms/custom_icon_button.dart';
import 'package:exemplifica/widgets/atoms/custom_text.dart';
import 'package:exemplifica/widgets/templates/regras_sinais_template.dart';
import 'package:flutter/material.dart';

class RegrasSinaisPage extends StatelessWidget {
  const RegrasSinaisPage({super.key});

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
            title: CoreStringsRegrasSinais.titleRegraSinal,
            fontSize: 22,
          ),
        ),
      ),
      body: RegrasSinaisTemplate(
        width: width,
      ),
    );
  }
}