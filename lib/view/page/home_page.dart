import 'package:exemplifica/utils/constants/core_colors.dart';
import 'package:exemplifica/utils/constants/core_strings_assets.dart';
import 'package:exemplifica/view/molecules/custom_scaffold.dart';
import 'package:exemplifica/view/templates/home_page_template.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {  

  @override
  Widget build(BuildContext context) {    
    double height = MediaQuery.of(context).size.height * 0.1;
    double width = MediaQuery.of(context).size.width * 0.42;
    return CustomScaffold(
      titleAppBar: Image.asset(
            CoreStringsAssets.logoExemplifica,
            height: 45,
          ),
      leading: false,      
      body: HomePageButtonsGrid(
        backgroundColorGrid: CoreColors.appBarColor,
        height: height,
        width: width,
      ),
    );
  }
}
