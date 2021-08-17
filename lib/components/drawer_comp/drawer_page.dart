import 'package:exemplifica_git/components/drawer_comp/drawer_page_header.dart';
import 'package:exemplifica_git/components/page_section.dart';
import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget {
  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.horizontal(right: Radius.circular(70)),
      child: SizedBox(
        width: MediaQuery.of(context).size.width *0.6,
        child: Drawer(
          child: Container(
            color: Color.fromRGBO(250,250,250, 100),
            child: ListView(
              children: [
                DrawerPageHeader(),
                 PageSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

