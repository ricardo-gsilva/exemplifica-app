import 'package:exemplifica/utils/constants/core_keys.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final double height;
  final double width;
  final void Function() onTap;
  final Color colorCard;
  final Widget child;
  const CustomCard({
    Key? key,
    required this.height,
    required this.width,
    required this.onTap,
    required this.colorCard,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      key: Key(CoreKeys.customCard),
      height: height,
      width: width,
      child: InkWell(
        onTap: onTap,
        child: Card(
          color: colorCard,
          child: child
        ),
      ),
    );
  }
}
