import 'package:exemplifica/core/config/buttons_config.dart';
import 'package:exemplifica/core/config/registry/learning_buttons_registry.dart';
import 'package:exemplifica/core/ui/enums/config_buttons_enum.dart';
import 'package:exemplifica/core/ui/widgets/card_custom.dart';
import 'package:exemplifica/core/ui/widgets/category_title.dart';
import 'package:flutter/material.dart';

class ButtonsGrid extends StatelessWidget {
  final List<ConfigButtonsEnum> buttons;
  final double spacing;
  final double aspectRatio;
  final int crossAxisCount;
  final List<String>? categoryTitle;
  final Map<ConfigButtonsEnum, ButtonsConfig>? registry;

  const ButtonsGrid({
    super.key,
    this.spacing = 12,
    this.aspectRatio = 2.0,
    this.crossAxisCount = 2,
    required this.buttons,
    this.categoryTitle,
    this.registry,
  });

  @override
  Widget build(BuildContext context) {
    final map = registry ?? learningButtonsConfig;
    return GridView.count(
      crossAxisCount: crossAxisCount,
      crossAxisSpacing: spacing,
      mainAxisSpacing: spacing,
      childAspectRatio: aspectRatio,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: List.generate(buttons.length, (index) {
        final type = buttons[index];
        final config = map[type]!;
        final title = categoryTitle != null && categoryTitle!.length > index ? categoryTitle![index] : null;
        if (title != null) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CategoryTitle(title),
              CardCustom(config: config),
            ],
          );
        }
        return CardCustom(config: config);
      }).toList(),
    );
  }
}
