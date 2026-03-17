import 'package:exemplifica/core/ui/enums/content_type_enum.dart';
import 'package:flutter/material.dart';

class ContentModel {
  final ContentTypeEnum type;
  final String title;
  final double? width;
  final double? height;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final Color? color;

  const ContentModel._({
    required this.type,
    required this.title,
    this.width,
    this.height,
    this.fontSize,
    this.fontWeight,
    this.textAlign,
    this.color,
  });

  const ContentModel.text(
    String text, {
    double? fontSize,
    FontWeight? fontWeight,
    TextAlign? textAlign,
    Color? color,
  }) : this._(
          type: ContentTypeEnum.text,
          title: text,
          fontSize: fontSize,
          fontWeight: fontWeight,
          textAlign: textAlign,
          color: color,
        );

  const ContentModel.image(
    String asset, {
    double? width,
    double? height,
  }) : this._(
          type: ContentTypeEnum.image,
          title: asset,
          width: width,
          height: height,
        );
}