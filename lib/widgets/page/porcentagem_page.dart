import 'package:exemplifica/utils/person_icons.dart';
import 'package:exemplifica/utils/constants/core_fontSize.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/widgets/atoms/custom_icon_button.dart';
import 'package:exemplifica/widgets/atoms/custom_text.dart';
import 'package:exemplifica/widgets/molecules/custom_scaffold.dart';
import 'package:exemplifica/widgets/page/calc_porcentagem_page.dart';
import 'package:exemplifica/widgets/templates/porcentagem_template.dart';
import 'package:flutter/material.dart';

class PorcentagemPage extends StatelessWidget {
  const PorcentagemPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return CustomScaffold(
      titleAppBar: CustomText(
        title: CoreStrings.titlePorcentagem,
        fontSize: CoreFontSize.h_22,
      ),
      leading: true,
      actions: [
        CustomIconButton(
          icon: Person.calc,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => CalcPorcentagemPage()));
          },
        ),
      ],
      body: PorcentagemTemplate(
        width: width,
        height: height,
      ),
    );
  }
}