import 'package:exemplifica/utils/constants/core_keys.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/view/page/expoentes_page.dart';
import 'package:exemplifica/view/page/multiplicacao_divisao_page.dart';
import 'package:exemplifica/view/page/parentesis_page.dart';
import 'package:exemplifica/view/page/regras_sinais_page.dart';
import 'package:exemplifica/view/page/soma_subtracao_page.dart';
import 'package:flutter/material.dart';

import 'package:exemplifica/view/atoms/custom_button.dart';

class ButtonGridRegrasBasicas extends StatelessWidget {
  final double height;
  final double width;
  const ButtonGridRegrasBasicas({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      key: Key(CoreKeys.buttonGridRegrasBasicas),
      children: <Widget>[
        CustomButton(
          height: height,
          width: width,
          title: CoreStrings.titleButtonParentesis,
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (_) => ParentesisPage()));
          },
        ),
        CustomButton(
          title: CoreStrings.titleButtonExpoentes,
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (_) => ExpoentesPage()));
          },
          height: height,
          width: width,
        ),
        CustomButton(
          title: CoreStrings.titleButtonMultipDiv,
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) => MultiplicacaoDivisaoPage()));
          },
          height: height,
          width: width,
        ),
        CustomButton(
          title: CoreStrings.titleButtonSomaSub,
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) => SomaSubtracaoPage()));
          },
          height: height,
          width: width,
        ),
        CustomButton(
          title: CoreStrings.titleButtonRegraSinal,
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) => RegrasSinaisPage()));
          },
          height: height,
          width: width,
        ),
      ],
    );
  }
}
