import 'package:exemplifica/utils/person_icons.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/widgets/organisms/buttons_grid.dart';
import 'package:exemplifica/widgets/page/calculators_page.dart';
import 'package:exemplifica/widgets/page/regras_basicas_page.dart';
import 'package:flutter/material.dart';

import 'package:exemplifica/widgets/molecules/button_primary.dart';

class HomePageButtonsGrid extends StatelessWidget {
  final Color backgroundColorGrid;
  final double height;
  final double width;
  const HomePageButtonsGrid({
    Key? key,
    required this.backgroundColorGrid,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonPrimary(
                    title: CoreStrings.titleCalculadoras, 
                    height: height * 2.2, 
                    width: width * 1.03,
                    icon: Person.calc,
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_) => CalculatorsPage()));
                    },
                  ),
                  ButtonPrimary(
                    title: CoreStrings.titleRegrasBasicas,
                    height: height * 2.2, 
                    width: width * 1.03,
                    icon: Person.book,
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_) => RegrasBasicasPage()));
                    },
                  ),
                ],
              ),
              ButtonsGrid(
                height: height,
                width: width,
              )
            ],
          ),
        )
      ],
    );
  }
}
