import 'package:exemplifica/utils/constants/core_colors.dart';
import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.reply,
        color: CoreColors.textPrimary,
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }
}
