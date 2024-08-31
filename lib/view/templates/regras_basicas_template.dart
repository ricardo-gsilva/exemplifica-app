import 'package:exemplifica/utils/constants/core_keys.dart';
import 'package:flutter/material.dart';
import 'package:exemplifica/view/molecules/collum_button_grid_regras_basicas.dart';

class RegrasBasicasGridTemplate extends StatelessWidget {
  final double height;
  final double width;
  const RegrasBasicasGridTemplate({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      key: Key(CoreKeys.regrasBasicasTemplate),
      child: ButtonGridRegrasBasicas(
        height: height,
        width: width,
      ),
    );
  }
}
