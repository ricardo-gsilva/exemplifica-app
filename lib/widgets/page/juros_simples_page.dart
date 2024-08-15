import 'package:exemplifica/utils/constants/core_colors.dart';
import 'package:exemplifica/utils/constants/strings/strings_juros_simples.dart';
import 'package:exemplifica/widgets/atoms/custom_appBar.dart';
import 'package:exemplifica/widgets/atoms/custom_icon_button.dart';
import 'package:exemplifica/widgets/atoms/custom_text.dart';
import 'package:exemplifica/widgets/templates/juros_simples_template.dart';
import 'package:flutter/material.dart';

class JurosSimplesPage extends StatelessWidget {
  const JurosSimplesPage({super.key});

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
            title: CoreStringsJurosSimples.titleJurosSimples,
            fontSize: 22,
          ),
        ),
      ),
      body: JurosSimplesTemplate(
        width: width,
      ),
    );
  }
}