import 'package:exemplifica/person_icons.dart';
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
            decoration: BoxDecoration(
                color: backgroundColorGrid,
                borderRadius: BorderRadius.circular(15)
              ),
            child: Column(
              children: [
                Row(
                  children: [
                    ButtonPrimary(
                      title: CoreStrings.titleCalculadoras, 
                      height: height * 2.2, 
                      width: width,
                      icon: Person.calc,
                      onTap: (){},
                    ),
                    ButtonPrimary(
                      title: CoreStrings.titleRegrasBasicas,
                      height: height * 2.2, 
                      width: width,
                      icon: Person.attention,
                      onTap: (){},
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
