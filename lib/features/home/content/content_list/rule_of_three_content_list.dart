import 'package:exemplifica/core/constants/core_colors.dart';
import 'package:exemplifica/core/ui/models/content_model.dart';
import 'package:exemplifica/core/constants/core_fontSize.dart';
import 'package:exemplifica/core/constants/core_assets_strings.dart';
import 'package:exemplifica/features/home/content/strings/rule_of_three_strings.dart';
import 'package:flutter/material.dart';

final List<ContentModel> ruleOfThreeContentList = [
  ContentModel.text(RuleOfThreeStrings.ruleOfThreeText1),
  ContentModel.text(RuleOfThreeStrings.ruleOfThreeText2,
      textAlign: TextAlign.center, fontSize: CoreFontSize.h_20, fontWeight: FontWeight.bold),
  ContentModel.image(CoreAssetsStrings.ruleOfThreeAsset3),
  ContentModel.text(RuleOfThreeStrings.ruleOfThreeText3),
  ContentModel.image(CoreAssetsStrings.ruleOfThreeAsset4),
  ContentModel.text(RuleOfThreeStrings.ruleOfThreeText4, color: CoreColors.attention, fontSize: CoreFontSize.h_20),
  ContentModel.text(RuleOfThreeStrings.ruleOfThreeText5),
  ContentModel.image(CoreAssetsStrings.ruleOfThreeAsset5),
  ContentModel.text(RuleOfThreeStrings.ruleOfThreeText6),
  ContentModel.image(CoreAssetsStrings.ruleOfThreeAsset6),
  ContentModel.text(RuleOfThreeStrings.ruleOfThreeText7),
  ContentModel.text(RuleOfThreeStrings.ruleOfThreeText10,
      textAlign: TextAlign.center, fontSize: CoreFontSize.h_20, fontWeight: FontWeight.bold),
  ContentModel.text(RuleOfThreeStrings.ruleOfThreeText8),
  ContentModel.text(RuleOfThreeStrings.ruleOfThreeText9),
  ContentModel.image(CoreAssetsStrings.ruleOfThreeAsset8),
  ContentModel.text(RuleOfThreeStrings.ruleOfThreeText11),
  ContentModel.image(CoreAssetsStrings.ruleOfThreeAsset9),
  ContentModel.text(RuleOfThreeStrings.ruleOfThreeText12),
  ContentModel.image(CoreAssetsStrings.ruleOfThreeAsset10),
  ContentModel.text(RuleOfThreeStrings.ruleOfThreeText13),
  ContentModel.image(CoreAssetsStrings.ruleOfThreeAsset11),
  ContentModel.text(RuleOfThreeStrings.ruleOfThreeText14),
  ContentModel.image(CoreAssetsStrings.ruleOfThreeAsset12),
  ContentModel.text(RuleOfThreeStrings.ruleOfThreeText15),
  ContentModel.image(CoreAssetsStrings.ruleOfThreeAsset13),
  ContentModel.text(RuleOfThreeStrings.ruleOfThreeText16),
];