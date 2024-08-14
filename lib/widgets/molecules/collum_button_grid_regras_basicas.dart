import 'package:exemplifica/screens/expoentes.dart';
import 'package:exemplifica/screens/mult_div.dart';
import 'package:exemplifica/screens/parentesis.dart';
import 'package:exemplifica/screens/regra_sinal.dart';
import 'package:exemplifica/screens/soma_sub.dart';
import 'package:exemplifica/widgets/page/parentesis_page.dart';
import 'package:flutter/material.dart';

import 'package:exemplifica/widgets/atoms/custom_button.dart';

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
            Navigator.push(context, MaterialPageRoute(builder: (_) => Expoentes()));
          },
          height: height,
          width: width,
        ),
        CustomButton(
          title: "3º Multiplicações e Divisões",
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) => MultiplicaDiv()));
          },
          height: height,
          width: width,
        ),
        CustomButton(
          title: "4º Somas e Subtrações",
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) => SomaSubtracao()));
          },
          height: height,
          width: width,
        ),
        CustomButton(
          title: "Regras de Sinais",
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) => RegrasSinais()));
          },
          height: height,
          width: width,
        ),
      ],
    );
  }
}
