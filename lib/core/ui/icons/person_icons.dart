import 'package:exemplifica/core/constants/core_strings.dart';
import 'package:flutter/widgets.dart';

class Person {
  Person._();

  static const _kFontFam = CoreStrings.person;
  static const _kFontPkg = null;

  static const IconData book = IconData(0xe800, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData attention = IconData(0xe801, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData calc = IconData(0xf1ec, fontFamily: _kFontFam, fontPackage: _kFontPkg);
}
