import 'package:exemplifica/utils/constants/core_colors.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/widgets/atoms/custom_icon_button.dart';
import 'package:exemplifica/widgets/atoms/custom_text.dart';
import 'package:exemplifica/widgets/atoms/custom_appBar.dart';
import 'package:exemplifica/widgets/organisms/buttons_grid_calculators.dart';
import 'package:flutter/material.dart';

class CalculatorsPage extends StatefulWidget {
  const CalculatorsPage({super.key});

  @override
  State<CalculatorsPage> createState() => _CalculatorsPageState();
}

class _CalculatorsPageState extends State<CalculatorsPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height * 0.1;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          leading: CustomIconButton(),
          title: CustomText(
            title: CoreStrings.titleCalculadoras,
            color: CoreColors.textPrimary,
          ),          
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: ButtonsGridCalculators(
            height: height,
            width: width,
          ),
        ),
      ),
    );
  }
}
