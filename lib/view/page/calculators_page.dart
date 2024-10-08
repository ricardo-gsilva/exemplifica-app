import 'package:exemplifica/utils/constants/core_fontSize.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/view/atoms/custom_text.dart';
import 'package:exemplifica/view/molecules/custom_scaffold.dart';
import 'package:exemplifica/view/organisms/buttons_grid_calculators.dart';
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
    return CustomScaffold(
      titleAppBar: CustomText(
        title: CoreStrings.titleCalculadoras,
        fontSize: CoreFontSize.h_22,),
      leading: true,      
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
