import 'dart:convert';

import 'package:flutter/material.dart';

class TextModel {
  final String string;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  
  TextModel({
    required this.string,
    this.fontSize,
    this.fontWeight,
    this.textAlign,
  });

  TextModel copyWith({
    String? title,
    double? fontSize,
    FontWeight? fontWeight,
    TextAlign? textAlign,
  }) {
    return TextModel(
      string: title ?? this.string,
      fontSize: fontSize ?? this.fontSize,
      fontWeight: fontWeight ?? this.fontWeight,
      textAlign: textAlign ?? this.textAlign,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': string,
      'fontSize': fontSize,
      'fontWeight': fontWeight,
      'textAlign': textAlign,
    };
  }

  factory TextModel.fromMap(Map<String, dynamic> map) {
    return TextModel(
      string: map['title'] as String,
      fontSize: map['fontSize'] != null ? map['fontSize'] as double : null,
      fontWeight: map['fontWeight'] != null ? map['fontWeight'] as FontWeight : null,
      textAlign: map['textAlign'] != null ? map['textAlign'] as TextAlign : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory TextModel.fromJson(String source) => TextModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'TextModel(title: $string, fontSize: $fontSize, fontWeight: $fontWeight, textAlign: $textAlign)';
  }

  @override
  bool operator ==(covariant TextModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.string == string &&
      other.fontSize == fontSize &&
      other.fontWeight == fontWeight &&
      other.textAlign == textAlign;
  }

  @override
  int get hashCode {
    return string.hashCode ^
      fontSize.hashCode ^
      fontWeight.hashCode ^
      textAlign.hashCode;
  }
}
