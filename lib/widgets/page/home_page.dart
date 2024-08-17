import 'package:exemplifica/utils/constants/core_colors.dart';
import 'package:exemplifica/widgets/molecules/custom_scaffold.dart';
import 'package:exemplifica/widgets/templates/home_page_template.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double height = 0.0;
  double width = 0.0;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height * 0.1;
    width = MediaQuery.of(context).size.width * 0.42;
    return CustomScaffold(
      titleAppBar: Image.asset(
            'images/exemplo_3.png',
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
