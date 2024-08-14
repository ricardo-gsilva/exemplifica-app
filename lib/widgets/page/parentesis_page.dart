import 'package:exemplifica/utils/constants/core_colors.dart';
import 'package:exemplifica/utils/constants/strings/strings_parentesis.dart';
import 'package:exemplifica/widgets/atoms/custom_appBar.dart';
import 'package:exemplifica/widgets/atoms/custom_icon_button.dart';
import 'package:exemplifica/widgets/atoms/custom_text.dart';
import 'package:exemplifica/widgets/templates/parentesis_template.dart';
import 'package:flutter/material.dart';

class ParentesisPage extends StatelessWidget {
  const ParentesisPage({super.key});

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
            title: CoreStringsParentesis.titleParentesis,
            fontSize: 22,
          ),
        ),
      ),
      body: ParentesisTemplate(
        width: width,
      ),
    );
  }
}