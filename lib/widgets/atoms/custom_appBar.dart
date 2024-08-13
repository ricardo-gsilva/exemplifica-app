import 'package:exemplifica/utils/constants/core_colors.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: CoreColors.appBarColor,
      elevation: 2,
      centerTitle: true,
      title: Image.asset(
        'images/exemplo_3.png',
        height: 45,
      ),
    );
  }
}
