import 'package:exemplifica/utils/constants/core_colors.dart';
import 'package:exemplifica/utils/constants/core_fontSize.dart';
import 'package:exemplifica/utils/constants/core_keys.dart';
import 'package:exemplifica/view/atoms/custom_card.dart';
import 'package:exemplifica/view/atoms/custom_icon.dart';
import 'package:exemplifica/view/atoms/custom_text.dart';
import 'package:flutter/material.dart';

class ButtonPrimary extends StatelessWidget {
  final String title;
  final double height;
  final double width;
  final IconData icon;
  final void Function() onTap;

  const ButtonPrimary({
    Key? key,
    required this.title,
    required this.height,
    required this.width,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      key: Key(CoreKeys.buttonPrimary),
      height: height,
      width: width,
      onTap: onTap,
      colorCard: CoreColors.btnColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: CustomIcon(
              icon: icon,
              sizeIcon: 45,
              color: CoreColors.textPrimary,
            ),
          ),
          CustomText(
            title: title,
            color: CoreColors.textPrimary,
            fontSize: CoreFontSize.h_16,            
            fontWeight: FontWeight.bold,
          ),
        ],
      ),
    );
  }
}
