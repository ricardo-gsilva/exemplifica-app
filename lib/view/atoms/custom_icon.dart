import 'package:exemplifica/utils/constants/core_keys.dart';
import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  final IconData icon;
  final double sizeIcon;
  final Color color;

  const CustomIcon({
    Key? key,
    required this.icon,
    required this.sizeIcon,
    required this.color
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      key: Key(CoreKeys.customIcon),
      icon,
      color: color,
      size: sizeIcon,
    );
  }
}
