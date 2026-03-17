import 'package:exemplifica/core/constants/core_colors.dart';
import 'package:flutter/material.dart';

class IconButtonCustom extends StatelessWidget {
  final IconData? icon;
  final void Function()? onPressed;
  const IconButtonCustom({
    Key? key,
    this.icon,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      color: CoreColors.iconColor,
      icon: Icon(icon),
      onPressed: onPressed,
    );
  }
}
