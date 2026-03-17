import 'package:exemplifica/core/ui/enums/content_type_enum.dart';
import 'package:exemplifica/core/ui/enums/math_category_enum.dart';
import 'package:exemplifica/core/ui/widgets/scaffold_custom.dart';
import 'package:exemplifica/core/ui/widgets/text_custom.dart';
import 'package:exemplifica/core/ui/models/content_model.dart';
import 'package:flutter/material.dart';

class ContentPage extends StatelessWidget {
  final String title;
  final List<ContentModel> content;
  final List<Widget>? actions;
  final MathCategory category;

  const ContentPage({
    super.key,
    required this.title,
    required this.content,
    this.actions,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return ScaffoldCustom(
      titleAppBar: title,
      category: category,
      fontSize: 22,
      actions: actions,
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 30),
        itemCount: content.length,
        itemBuilder: (_, index) {
          final item = content[index];

          switch (item.type) {
            case ContentTypeEnum.text:
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: TextCustom(
                  text: item.title,
                  fontSize: item.fontSize ?? 18,
                  textAlign: item.textAlign ?? TextAlign.start,
                ),
              );
            case ContentTypeEnum.image:
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Center(
                  child: Image.asset(
                    item.title,
                    width: item.width,
                    height: item.height,
                  ),
                ),
              );
          }
        },
      ),
    );
  }
}
