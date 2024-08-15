import 'package:exemplifica/person_icons.dart';
import 'package:exemplifica/screens/calculadoras/calc_porcentagem.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/widgets/atoms/custom_icon_button.dart';
import 'package:exemplifica/widgets/atoms/custom_text.dart';
import 'package:exemplifica/widgets/molecules/custom_scaffold.dart';
import 'package:exemplifica/widgets/templates/porcentagem_template.dart';
import 'package:flutter/material.dart';

class PorcentagemPage extends StatelessWidget {
  const PorcentagemPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return CustomScaffold(
      titleAppBar: CustomText(
        title: CoreStrings.titlePorcentagem,
        fontSize: 22,
      ),
      actions: [
        CustomIconButton(
          icon: Person.calc,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => CalcPorcentagem()));
          },
        ),
      ],
      body: PorcentagemTemplate(
        width: width,
      ),
    );
  }
}