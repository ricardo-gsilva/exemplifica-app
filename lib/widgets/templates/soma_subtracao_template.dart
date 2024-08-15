import 'package:flutter/material.dart';
import 'package:exemplifica/utils/constants/strings/strings_soma_sub.dart';
import 'package:exemplifica/widgets/atoms/custom_text.dart';

class SomaSubtracaoTemplate extends StatelessWidget {
  final double width;
  const SomaSubtracaoTemplate({
    Key? key,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          CustomText(
            title: CoreStringsSomaSub.text1_SomaSub,
          ),
        ],
      ),
    );
  }
}
