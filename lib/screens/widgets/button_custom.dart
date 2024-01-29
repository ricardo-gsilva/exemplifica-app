// ignore_for_file: must_be_immutable

import 'package:exemplifica/utils/constants/core_colors.dart';
import 'package:flutter/material.dart';

class ButtonBase extends StatelessWidget {
  double? height;
  double? width;
  String? title;
  void Function()? onTap;
  bool visible;
  IconData? icon;

  ButtonBase({this.height, this.width, this.title, this.icon, this.visible = false, required this.onTap});

  @override
  Widget build(BuildContext context) {
    Color color = CoreColors.btnColor;
    return SizedBox(    
      height: height,
      width: width,
      child: InkWell(
        onTap: onTap,
        child: Card(
          color: color,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Visibility(
                  visible: visible,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Icon(
                      icon,
                      color: CoreColors.textPrimary,
                      size: 45,
                    ),
                  )
                ),
                Text(
                  title?? '',
                  style: TextStyle(
                    color: CoreColors.textPrimary,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}