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
      children: <Widget>[
        CustomButton(
          height: height,
          width: width,
          title: "1º Parêntesis",
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (_) => ParentesisPage()));
          },
        ),
        CustomButton(
          title: "2º Expoentes",
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (_) => ExpoentesPage()));
          },
          height: height,
          width: width,
        ),
        CustomButton(
          title: "3º Multiplicações e Divisões",
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) => MultiplicacaoDivisaoPage()));
          },
          height: height,
          width: width,
        ),
        CustomButton(
          title: "4º Somas e Subtrações",
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) => SomaSubtracaoPage()));
          },
          height: height,
          width: width,
        ),
        CustomButton(
          title: "Regras de Sinais",
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
