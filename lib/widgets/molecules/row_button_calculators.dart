import 'package:flutter/material.dart';

import 'package:exemplifica/widgets/atoms/custom_button.dart';

class RowButtonCalculators extends StatelessWidget {
  final double height;
  final double width;
  final String titleFirst;
  final String titleSecond;
  final void Function() onTapFirst;
  final void Function() onTapSecond;

  const RowButtonCalculators({
    Key? key,
    required this.height,
    required this.width,
    required this.titleFirst,
    required this.titleSecond,
    required this.onTapFirst,
    required this.onTapSecond,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomButton(
          title: titleFirst,
          onPressed: onTapFirst,
          height: height,
          width: width,
        ),
        CustomButton(
          title: titleSecond,
          onPressed: onTapSecond,
          height: height,
          width: width,
        ),
      ],
    );
  }
}
