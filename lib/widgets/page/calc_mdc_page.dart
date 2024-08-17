import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/widgets/atoms/custom_appBar.dart';
import 'package:exemplifica/widgets/atoms/custom_icon_button.dart';
import 'package:exemplifica/widgets/atoms/custom_text.dart';
import 'package:exemplifica/widgets/molecules/custom_scaffold.dart';
import 'package:exemplifica/widgets/page/home_page.dart';
import 'package:exemplifica/widgets/templates/calc_mdc_template.dart';
import 'package:flutter/material.dart';

class CalcMdcPage extends StatelessWidget {
  const CalcMdcPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      titleAppBar: CustomAppBar(
        title: CustomText(
          title: CoreStrings.titleMdc,
          fontSize: 22,
        ),
      ),
      leading: true,
      actions: [
        CustomIconButton(
          icon: Icons.home,
          onPressed: () {
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => HomePage()),
                (Route<dynamic> route) => false);
          },
        )
      ],
      body: CalcMdcTemplate(),
    );
  }
}