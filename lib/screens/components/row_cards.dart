// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class RowOperations extends StatelessWidget {
  double? height;
  String titleFirst;
  String titleSecond;
  void Function()? onTapFirst;
  void Function()? onTapSecond;
  RowOperations({
    required this.titleFirst,
    required this.titleSecond,
    required this.onTapFirst,
    required this.onTapSecond,
    required this.height, super.key});

  @override
  Widget build(BuildContext context) {
    Color color = Colors.lightBlue.shade400;
    return Row(
      children: [
        SizedBox(    
          height: height! * 0.10,
          width: MediaQuery.of(context).size.width * 0.5,
          child: InkWell(
            onTap: onTapFirst,
            child: Card(
              color: color,
              child: Center(
                child: Text(
                  titleFirst,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: height! * 0.10,
          width: MediaQuery.of(context).size.width * 0.5,
          child: InkWell(
            onTap: onTapSecond,
            child: Card(
              color: color,
              child: Center(
                child: Text(
                  titleSecond,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
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