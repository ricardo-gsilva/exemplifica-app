import 'package:flutter/material.dart';

class CustomImageAsset extends StatelessWidget {
  final String asset;
  final double width;
  const CustomImageAsset({
    Key? key,
    required this.asset,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        width: width,
        child: Image.asset(asset),
      ),
    );
  }
}
