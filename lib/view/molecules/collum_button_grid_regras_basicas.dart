import 'package:exemplifica/utils/constants/core_keys.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/utils/content_list/content_list_expoentes.dart';
import 'package:exemplifica/utils/content_list/content_list_multiplicacao_divisao.dart';
import 'package:exemplifica/utils/content_list/content_list_parentesis.dart';
import 'package:exemplifica/utils/content_list/content_list_regras_sinais.dart';
import 'package:exemplifica/utils/content_list/content_list_soma_subtracao.dart';
import 'package:exemplifica/view/page/content_page.dart';
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
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => ContentPage(
                  contentList: ContentListParentesis.contentListParentesis,
                  titleAppBar: CoreStrings.titleParentesis,
                ),
              ),
            );
          },
        ),
        CustomButton(
          title: CoreStrings.titleButtonExpoentes,
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => ContentPage(
                  contentList: ContentListExpoentes.contentListExpoentes,
                  titleAppBar: CoreStrings.titleExpoentes,
                ),
              ),
            );
          },
          height: height,
          width: width,
        ),
        CustomButton(
          title: CoreStrings.titleButtonMultipDiv,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => ContentPage(
                  contentList: ContentListMultiplicacaoDivisao.contentListMultiplicacaoDivisao,
                  titleAppBar: CoreStrings.titleMultipDiv,
                ),
              ),
            );
          },
          height: height,
          width: width,
        ),
        CustomButton(
          title: CoreStrings.titleButtonSomaSub,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => ContentPage(
                  contentList: ContentListSomaSubtracao.contentListSomaSubtracao,
                  titleAppBar: CoreStrings.titleSomaSub,
                ),
              ),
            );
          },
          height: height,
          width: width,
        ),
        CustomButton(
          title: CoreStrings.titleButtonRegraSinal,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => ContentPage(
                  contentList: ContentListRegrasSinais.contentListRegrasSinais,
                  titleAppBar: CoreStrings.titleRegraSinal,
                ),
              ),
            );
          },
          height: height,
          width: width,
        ),
      ],
    );
  }
}
