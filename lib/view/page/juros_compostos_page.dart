import 'package:exemplifica/utils/constants/core_keys.dart';
import 'package:exemplifica/utils/person_icons.dart';
import 'package:exemplifica/utils/constants/core_fontSize.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/view/atoms/custom_icon_button.dart';
import 'package:exemplifica/view/atoms/custom_text.dart';
import 'package:exemplifica/view/molecules/custom_scaffold.dart';
import 'package:exemplifica/view/page/calc_juros_compostos_page.dart';
import 'package:exemplifica/view/templates/juros_compostos_template.dart';
import 'package:flutter/material.dart';

class JurosCompostosPage extends StatelessWidget {
  const JurosCompostosPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return CustomScaffold(
      titleAppBar: CustomText(
        title: CoreStrings.titleJurosCompostos,
        fontSize: CoreFontSize.h_22,
      ),
      leading: true,
      actions: [
        CustomIconButton(
          icon: Person.calc,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => CalcJurosCompostosPage()));
          },
        ),
      ],
      body: JurosCompostosTemplate(
        key: Key(CoreKeys.jurosCompostosTemplate),
        width: width,
        height: height,
      ),
    );
  }
}