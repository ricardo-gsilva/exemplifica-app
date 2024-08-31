import 'package:exemplifica/utils/constants/core_keys.dart';
import 'package:exemplifica/view/atoms/custom_button.dart';
import 'package:flutter/material.dart';

class RowButtons extends StatelessWidget {
  final double height;
  final double width;
  final String titleFirst;
  final String titleSecond;
  final void Function() onTapFirst;
  final void Function() onTapSecond;
  RowButtons({
    required this.height,
    required this.width,
    required this.titleFirst, 
    required this.titleSecond,
    required this.onTapFirst, 
    required this.onTapSecond,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      key: Key(CoreKeys.rowButtons),
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomButton(
          onPressed: onTapFirst,
          title: titleFirst,
          height: height,
          width: width,
        ),
        CustomButton(
          onPressed: onTapSecond,
          title: titleSecond,
          height: height,
          width: width,
        ),
      ],
    );
  }
}
