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
      icon,
      color: color,
      size: sizeIcon,
    );
  }
}
