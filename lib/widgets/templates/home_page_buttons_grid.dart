import 'package:exemplifica/person_icons.dart';
import 'package:exemplifica/screens/calculadoras.dart';
import 'package:exemplifica/screens/regras_basicas.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/widgets/organisms/buttons_grid.dart';
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
          child: Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),            
            child: Column(
              children: [
                Row(
                  children: [
                    ButtonPrimary(
                      title: CoreStrings.titleCalculadoras, 
                      height: height * 2.2, 
                      width: width,
                      icon: Person.calc,
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_) => Calculadoras()));
                      },
                    ),
                    ButtonPrimary(
                      title: CoreStrings.titleRegrasBasicas,
                      height: height * 2.2, 
                      width: width,
                      icon: Person.attention,
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_) => RegrasBasicas()));
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
