import 'package:exemplifica/utils/constants/core_keys.dart';
import 'package:flutter/material.dart';
import 'package:exemplifica/utils/constants/core_colors.dart';

class CustomIconButton extends StatelessWidget {
  final IconData? icon;
  final void Function()? onPressed;
  const CustomIconButton({
    Key? key,
    this.icon,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      key: Key(CoreKeys.customIconButton),
      icon: Icon(
        icon,
        color: CoreColors.textPrimary,
      ),
      onPressed: onPressed,
    );
  }
}
