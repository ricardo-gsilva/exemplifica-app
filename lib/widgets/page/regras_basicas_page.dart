import 'package:exemplifica/utils/constants/core_colors.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/widgets/atoms/custom_appBar.dart';
import 'package:exemplifica/widgets/atoms/custom_text.dart';
import 'package:exemplifica/widgets/templates/regras_basicas_template.dart';
import 'package:flutter/material.dart';

class RegrasBasicasPage extends StatefulWidget {
  const RegrasBasicasPage({super.key});

  @override
  State<RegrasBasicasPage> createState() => _RegrasBasicasPageState();
}

class _RegrasBasicasPageState extends State<RegrasBasicasPage> {
  double height = 0.0;
  double width = 0.0;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width * 0.9;
    height = MediaQuery.of(context).size.height * 0.1;

    return Scaffold(
      backgroundColor: CoreColors.colorBackground,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: CustomText(
            title: CoreStrings.titleRegrasBasicas,
            color: CoreColors.textPrimary,
            fontSize: 22,
          ),
          leading: IconButton(
            icon: Icon(
              Icons.reply,
              color: CoreColors.textPrimary,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
        child: RegrasBasicasGrid(
          height: height,
          width: width,
        ),
      ),
    );
  }
}
