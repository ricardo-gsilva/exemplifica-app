import 'package:exemplifica/person_icons.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/widgets/atoms/custom_icon_button.dart';
import 'package:exemplifica/widgets/atoms/custom_text.dart';
import 'package:exemplifica/widgets/molecules/custom_scaffold.dart';
import 'package:exemplifica/widgets/page/calc_tabuada_page.dart';
import 'package:exemplifica/widgets/templates/tabuada_template.dart';
import 'package:flutter/material.dart';

class TabuadaPage extends StatelessWidget {
  const TabuadaPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return CustomScaffold(
      titleAppBar: CustomText(
        title: CoreStrings.titleTabuada,
        fontSize: 22,
      ),
      leading: true,
      actions: [
        CustomIconButton(
          icon: Person.calc,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => CalcTabuadaPage()));
          },
        ),
      ],
      body: TabuadaTemplate(
        width: width,
      ),
    );
  }
}