import 'package:flutter/material.dart';

import 'package:exemplifica/utils/constants/core_colors.dart';

class CustomAppBar extends StatelessWidget {
  final Widget title;
  final Widget? leading;
  final Color? color;
  final Color? backgroundColorAppBar;
  const CustomAppBar({
    Key? key,
    required this.title,
    this.color,
    this.backgroundColorAppBar,
    this.leading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColorAppBar?? CoreColors.appBarColor,
      elevation: 2,
      centerTitle: true,
      automaticallyImplyLeading: false,
      title: title,
      leading: leading ?? SizedBox(),
    );
  }
}
