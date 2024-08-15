import 'package:exemplifica/person_icons.dart';
import 'package:exemplifica/screens/calculadoras/cald_fatorial.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/widgets/atoms/custom_icon_button.dart';
import 'package:exemplifica/widgets/atoms/custom_text.dart';
import 'package:exemplifica/widgets/molecules/custom_scaffold.dart';
import 'package:exemplifica/widgets/templates/fatorial_template.dart';
import 'package:flutter/material.dart';

class FatorialPage extends StatelessWidget {
  const FatorialPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return CustomScaffold(
      titleAppBar: CustomText(
        title: CoreStrings.titleFatorial,
        fontSize: 22,
      ),
      leading: true,
      actions: [
        CustomIconButton(
          icon: Person.calc,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => CalcFatorial()));
          },
        ),
      ],
      body: FatorialTemplate(
        width: width,
      ),
    );
  }
}