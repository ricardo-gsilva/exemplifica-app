import 'package:exemplifica/person_icons.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/widgets/atoms/custom_icon_button.dart';
import 'package:exemplifica/widgets/atoms/custom_text.dart';
import 'package:exemplifica/widgets/molecules/custom_scaffold.dart';
import 'package:exemplifica/widgets/page/calc_regra_de_3_page.dart';
import 'package:exemplifica/widgets/templates/regra_de_3_template.dart';
import 'package:flutter/material.dart';

class RegraDe3Page extends StatelessWidget {
  const RegraDe3Page({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return CustomScaffold(
      titleAppBar: CustomText(
        title: CoreStrings.titleRegraDe3,
        fontSize: 22,
      ),
      leading: true,
      actions: [
        CustomIconButton(
          icon: Person.calc,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => CalcRegraDe3Page()));
          },
        ),
      ],
      body: RegraDe3Template(
        width: width,
      ),
    );
  }
}