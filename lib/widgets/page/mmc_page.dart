import 'package:exemplifica/person_icons.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/widgets/atoms/custom_icon_button.dart';
import 'package:exemplifica/widgets/atoms/custom_text.dart';
import 'package:exemplifica/widgets/molecules/custom_scaffold.dart';
import 'package:exemplifica/widgets/page/calc_mmc_page.dart';
import 'package:exemplifica/widgets/templates/mmc_template.dart';
import 'package:flutter/material.dart';

class MmcPage extends StatelessWidget {
  const MmcPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return CustomScaffold(
      titleAppBar: CustomText(
        title: CoreStrings.titleMmc,
        fontSize: 22,
      ),
      leading: true,
      actions: [
        CustomIconButton(
          icon: Person.calc,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => CalcMmcPage()));
          },
        ),
      ],
      body: MmcTemplate(
        width: width,
      ),
    );   
  }
}