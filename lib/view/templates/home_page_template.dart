import 'package:exemplifica/utils/constants/core_keys.dart';
import 'package:exemplifica/utils/person_icons.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/view/organisms/buttons_grid.dart';
import 'package:exemplifica/view/page/calculators_page.dart';
import 'package:exemplifica/view/page/regras_basicas_page.dart';
import 'package:flutter/material.dart';

import 'package:exemplifica/view/molecules/button_primary.dart';

class HomePageButtonsGridTemplate extends StatelessWidget {
  final Color backgroundColorGrid;
  final double height;
  final double width;
  const HomePageButtonsGridTemplate({
    Key? key,
    required this.backgroundColorGrid,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      key: Key(CoreKeys.homePageButtonsGridTemplate),
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 50),
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
          ),
        )
      ],
    );
  }
}
