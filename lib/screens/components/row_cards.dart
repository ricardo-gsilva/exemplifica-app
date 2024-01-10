// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class RowCards extends StatelessWidget {
  double? height;
  String titleFirst;
  String titleSecond;
  void Function()? onTapFirst;
  void Function()? onTapSecond;
  RowCards({
    required this.titleFirst,
    required this.titleSecond,
    required this.onTapFirst,
    required this.onTapSecond,
    required this.height, super.key});

  @override
  Widget build(BuildContext context) {
    Color color = Colors.lightBlue.shade200;
    double width = MediaQuery.of(context).size.width * 0.47;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: height,
          width: width,
          child: InkWell(
            onTap: onTapFirst,
            child: Card(
              color: color,
              child: Center(
                child: Text(
                  titleFirst,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: height,
          width: width,
          child: InkWell(
            onTap: onTapSecond,
            child: Card(
              color: color,
              child: Center(
                child: Text(
                  titleSecond,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
