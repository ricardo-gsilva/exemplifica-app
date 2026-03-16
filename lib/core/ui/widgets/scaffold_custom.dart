import 'package:exemplifica/core/ui/enums/math_category_enum.dart';
import 'package:exemplifica/core/ui/widgets/app_bar_custom.dart';
import 'package:exemplifica/core/ui/widgets/icon_button_custom.dart';
import 'package:flutter/material.dart';

class ScaffoldCustom extends StatelessWidget {
  final String? titleAppBar;
  final Widget body;
  final bool? leading;
  final List<Widget>? actions;
  final double? fontSize;
  final MathCategory category;

  const ScaffoldCustom({
    Key? key,
    this.titleAppBar,
    required this.body,
    this.actions,
    this.leading,
    this.fontSize,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(
        category: category,
        leading: leading == false
            ? null
            : IconButtonCustom(
                icon: Icons.reply,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
        title: titleAppBar,
        actions: actions,
        fontSize: fontSize,
      ),
      body: body,
    );
  }
}
