import 'package:exemplifica/core/constants/core_colors.dart';
import 'package:exemplifica/core/ui/models/content_model.dart';
import 'package:exemplifica/core/constants/core_fontSize.dart';
import 'package:exemplifica/core/constants/core_assets_strings.dart';
import 'package:exemplifica/features/home/content/strings/factorial_strings.dart';
import 'package:flutter/material.dart';

final List<ContentModel> factorialContentList = [
  ContentModel.text(FactorialStrings.factorialText1),
  ContentModel.image(CoreAssetsStrings.factorialAsset2),
  ContentModel.text(FactorialStrings.factorialText2),
  ContentModel.text(FactorialStrings.factorialText3,
      fontSize: CoreFontSize.h_20, color: CoreColors.attention, fontWeight: FontWeight.bold),
  ContentModel.text(FactorialStrings.factorialText4),
  ContentModel.image(CoreAssetsStrings.factorialAsset4),
  ContentModel.text(FactorialStrings.factorialText5),
  ContentModel.image(CoreAssetsStrings.factorialAsset5),
  ContentModel.text(FactorialStrings.factorialText6),
  ContentModel.image(CoreAssetsStrings.factorialAsset6),
  ContentModel.text(FactorialStrings.factorialText7),
  ContentModel.image(CoreAssetsStrings.factorialAsset7),
  ContentModel.text(FactorialStrings.factorialText8,
      fontSize: CoreFontSize.h_20, fontWeight: FontWeight.bold, textAlign: TextAlign.center),
  ContentModel.image(CoreAssetsStrings.factorialAsset9),
  ContentModel.text(FactorialStrings.factorialText9),
  ContentModel.image(CoreAssetsStrings.factorialAsset10),
  ContentModel.text(FactorialStrings.factorialText11,
      fontSize: CoreFontSize.h_20, fontWeight: FontWeight.bold, textAlign: TextAlign.center),
  ContentModel.image(CoreAssetsStrings.factorialAsset12),
  ContentModel.text(FactorialStrings.factorialText12, textAlign: TextAlign.center),
  ContentModel.image(CoreAssetsStrings.factorialAsset13),
  ContentModel.text(FactorialStrings.factorialText13, textAlign: TextAlign.center),
  ContentModel.image(CoreAssetsStrings.factorialAsset14),
  ContentModel.text(FactorialStrings.factorialText14,
      textAlign: TextAlign.center, fontSize: CoreFontSize.h_20, fontWeight: FontWeight.bold),
  ContentModel.text(FactorialStrings.factorialText15),
  ContentModel.image(CoreAssetsStrings.factorialAsset16),
  ContentModel.text(FactorialStrings.factorialText16),
  ContentModel.image(CoreAssetsStrings.factorialAsset17),
  ContentModel.text(FactorialStrings.factorialText17),
  ContentModel.text(FactorialStrings.factorialText18,
      fontSize: CoreFontSize.h_20, fontWeight: FontWeight.bold, textAlign: TextAlign.center),
  ContentModel.text(FactorialStrings.factorialText19),
  ContentModel.image(CoreAssetsStrings.factorialAsset19),
  ContentModel.text(FactorialStrings.factorialText20, textAlign: TextAlign.center),
  ContentModel.image(CoreAssetsStrings.factorialAsset20),
  ContentModel.text(FactorialStrings.factorialText13, textAlign: TextAlign.center),
  ContentModel.image(CoreAssetsStrings.factorialAsset21),
];