// ignore_for_file: must_be_immutable

import 'package:exemplifica/widgets/button_custom.dart';
import 'package:flutter/material.dart';

class RowButtons extends StatelessWidget {
  double? height;
  double? width;
  double? paddingTop;
  String? titleFirst;
  String? titleSecond;
  void Function()? onTapFirst;
  void Function()? onTapSecond;
  RowButtons({this.height, this.onTapFirst, this.onTapSecond, this.titleFirst, this.titleSecond, this.width, this.paddingTop = 0, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: paddingTop!),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ButtonBase(
            onTap: onTapFirst,
            title: titleFirst,
            height: height,
            width: width,
          ),
          ButtonBase(
            onTap: onTapSecond,
            title: titleSecond,
            height: height,
            width: width,
          ),
        ],
      ),
    );
  }
}
