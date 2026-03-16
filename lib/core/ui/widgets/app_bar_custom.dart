import 'package:exemplifica/core/extensions/math_category_color.dart';
import 'package:exemplifica/core/ui/enums/math_category_enum.dart';
import 'package:exemplifica/core/ui/widgets/text_custom.dart';
import 'package:exemplifica/core/constants/core_assets_strings.dart';
import 'package:flutter/material.dart';

class AppBarCustom extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final Widget? leading;
  final List<Widget>? actions;
  final double? fontSize;
  final MathCategory category;

  const 
  AppBarCustom({
    super.key,
    this.title,
    this.leading,
    this.actions,
    this.fontSize,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: category.color!.shade500,
      automaticallyImplyLeading: false,
      leading: leading,
      title: title != null
          ? TextCustom(text: title!, fontSize: fontSize,)
          : Image.asset(
              CoreAssetsStrings.appLogo,
              height: 45,
            ),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
