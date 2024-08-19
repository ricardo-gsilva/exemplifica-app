import 'dart:convert';

import 'package:flutter/material.dart';

class StringsAndAssetsModel {
  final String title;
  final double? width;
  final double? height;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final Color? color;

  StringsAndAssetsModel({
    required this.title,
    this.width,
    this.height,
    this.fontSize,
    this.fontWeight,
    this.textAlign,
    this.color,
  });  

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'width': width,
      'height': height,
      'fontSize': fontSize,
      'fontWeight': fontWeight,
      'textAlign': textAlign,
      'color': color
    };
  }

  factory StringsAndAssetsModel.fromMap(Map<String, dynamic> map) {
    return StringsAndAssetsModel(
      title: map['title'] as String,
      width: map['width'] != null ? map['width'] as double : null,
      height: map['height'] != null ? map['height'] as double : null,
      fontSize: map['fontSize'] != null ? map['fontSize'] as double : null,
      fontWeight: map['fontWeight'] != null ? map['fontWeight'] as FontWeight : null,
      textAlign: map['textAlign'] != null ? map['textAlign'] as TextAlign : null,
      color: map['color'] != null ? map['color'] as Color : null
    );
  }

  String toJson() => json.encode(toMap());

  factory StringsAndAssetsModel.fromJson(String source) => StringsAndAssetsModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
