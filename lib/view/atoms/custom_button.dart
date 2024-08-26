import 'package:exemplifica/utils/constants/core_colors.dart';
import 'package:exemplifica/utils/constants/core_fontSize.dart';
import 'package:exemplifica/utils/constants/core_keys.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final void Function() onPressed;
  final double height;
  final double width;
  const CustomButton({
    Key? key,
    required this.title,
    required this.onPressed,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      key: Key(CoreKeys.customButton),
      padding: const EdgeInsets.all(3.0),
      child: SizedBox(      
        height: height,
        width: width,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: CoreColors.btnColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)
            )
          ),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: CoreColors.textPrimary,
              fontSize: CoreFontSize.h_16,
              fontWeight: FontWeight.bold
            ),
          ),
          onPressed: onPressed,
        )
      ),
    );
  }
}
