// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class ButtonBase extends StatelessWidget {
  double? height;
  double? width;
  String? title;
  void Function()? onTap;

  ButtonBase({this.height, this.width, this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    Color color = Colors.lightBlue.shade200;
    return Padding(
      padding: const EdgeInsets.only(top: 2, left: 15, right: 15),
      child: SizedBox(    
        height: height,
        width: width,
        child: InkWell(
          onTap: onTap,
          child: Card(
            color: color,
            child: Center(
              child: Text(
                title?? '',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}