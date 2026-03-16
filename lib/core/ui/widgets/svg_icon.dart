import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgIcon extends StatelessWidget {
  final String iconName;
  final double size;
  final Color? color;

  const SvgIcon(
    this.iconName, {
    super.key,
    this.size = 28,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      iconName,
      width: size,
      height: size,
      colorFilter: color != null
          ? ColorFilter.mode(color!, BlendMode.srcIn)
          : null,
    );
  }
}