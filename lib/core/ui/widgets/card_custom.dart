import 'package:exemplifica/core/config/buttons_config.dart';
import 'package:exemplifica/core/extensions/math_category_color.dart';
import 'package:exemplifica/core/ui/widgets/text_custom.dart';
import 'package:flutter/material.dart';

class CardCustom extends StatelessWidget {
  final ButtonsConfig config;

  const CardCustom({
    Key? key,
    required this.config,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Card(
        color: config.category.color!.shade200,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: () => config.onTap(context),
          child: Padding(
            padding: EdgeInsets.all(12),
            child: config.vertical
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      config.icon,
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: TextCustom(
                          text: config.buttonTitle,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      config.icon,
                      Flexible(
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: TextCustom(
                            text: config.buttonTitle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
