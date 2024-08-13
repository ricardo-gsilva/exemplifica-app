import 'package:exemplifica/utils/constants/core_colors.dart';
import 'package:exemplifica/widgets/atoms/custom_appBar.dart';
import 'package:exemplifica/widgets/templates/home_page_buttons_grid.dart';
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
    width = MediaQuery.of(context).size.width * 0.444;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: Image.asset(
            'images/exemplo_3.png',
            height: 45,
          ),
        ),
      ),
      body: HomePageButtonsGrid(
        backgroundColorGrid: CoreColors.appBarColor,
        height: height,
        width: width,
      ),
    );
  }
}
