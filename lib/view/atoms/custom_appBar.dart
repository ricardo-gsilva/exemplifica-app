import 'package:exemplifica/utils/constants/core_keys.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final Widget title;
  final Widget? leading;
  final Color? color;
  final Color? backgroundColorAppBar;
  final List<Widget>? actions;
  const CustomAppBar({
    Key? key,
    required this.title,
    this.color,
    this.backgroundColorAppBar,
    this.leading,
    this.actions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      key: Key(CoreKeys.appBar),
      elevation: 2,
      centerTitle: true,
      automaticallyImplyLeading: false,
      title: title,
      leading: leading ?? SizedBox(),
      actions: actions?? [],
    );
  }
}
