import 'package:flutter/material.dart';
import 'package:exemplifica/view/molecules/collum_button_grid_regras_basicas.dart';

class RegrasBasicasGrid extends StatelessWidget {
  final double height;
  final double width;
  const RegrasBasicasGrid({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ButtonGridRegrasBasicas(
        height: height,
        width: width,
      ),
    );
  }
}
