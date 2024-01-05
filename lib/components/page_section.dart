import 'dart:io';
import 'package:exemplifica_git/ad_mob/ad_mob.dart';
import 'package:exemplifica_git/calculadoras/calculadoras.dart';
import 'package:exemplifica_git/components/page_tile.dart';
import 'package:exemplifica_git/person_icons.dart';
import 'package:exemplifica_git/ui/operacoes.dart';
import 'package:exemplifica_git/ui/regras_basicas.dart';
import 'package:flutter/material.dart';

class PageSection extends StatefulWidget {
  @override
  _PageSectionState createState() => _PageSectionState();
}

class _PageSectionState extends State<PageSection> {

  // final AdMob adMob = AdMob();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PageTile(
          label: 'Calculadoras',
          iconData: Person.calc,
          onTap: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context)
                      => Calculadoras()
                ));
          },
          highlighted: true,
        ),
        PageTile(
          label: 'Regras Básicas',
          iconData: Person.attention,
          onTap: (){            
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context)
                    => RegrasBasicas()
                ));
          },
          highlighted: true,
        ),
        PageTile(
          label: 'Operações',
          iconData: Person.book,
          onTap: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context)
                    => Operacoes()
                ));
          },
          highlighted: true,
        ),
        PageTile(
          label: 'Fechar',
          iconData: Icons.close,
          onTap: (){
            exit(0);
          },
          highlighted: true,
        ),
      ],
    );
  }
}