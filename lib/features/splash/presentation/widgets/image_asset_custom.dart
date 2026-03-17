import 'package:flutter/material.dart';

class ImageAssetCustom extends StatelessWidget {
  final String asset;
  final double? width;
  final double? height;
  final BoxFit? boxFit;
  const ImageAssetCustom({
    Key? key,
    required this.asset,
    this.width,
    this.height,
    this.boxFit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Container( 
        height: height,
        child: Image.asset(asset, fit: boxFit, height: height, width: width,),
      ),
    );
  }
}