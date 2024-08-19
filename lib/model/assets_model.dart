import 'dart:convert';

class StringsAndAssetsModel {
  final String asset;
  final double? width;
  final double? height;

  StringsAndAssetsModel({
    required this.asset,
    this.width,
    this.height,
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asset': asset,
      'width': width,
      'height': height,
    };
  }

  factory StringsAndAssetsModel.fromMap(Map<String, dynamic> map) {
    return StringsAndAssetsModel(
      asset: map['asset'] as String,
      width: map['width'] != null ? map['width'] as double : null,
      height: map['height'] != null ? map['height'] as double : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory StringsAndAssetsModel.fromJson(String source) => StringsAndAssetsModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
