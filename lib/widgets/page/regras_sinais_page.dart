import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/widgets/atoms/custom_icon_button.dart';
import 'package:exemplifica/widgets/atoms/custom_text.dart';
import 'package:exemplifica/widgets/molecules/custom_scaffold.dart';
import 'package:exemplifica/widgets/page/home_page.dart';
import 'package:exemplifica/widgets/templates/regras_sinais_template.dart';
import 'package:flutter/material.dart';

class RegrasSinaisPage extends StatelessWidget {
  const RegrasSinaisPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return CustomScaffold(
      titleAppBar: CustomText(
        title: CoreStrings.titleRegraSinal,
        fontSize: 22,
      ),
      leading: true,
      actions: [
        CustomIconButton(
          icon: Icons.home,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => HomePage()));
          },
        ),
      ],
      body: RegrasSinaisTemplate(
        width: width,
      ),
    );
  }
}