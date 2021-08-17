import 'package:flutter/material.dart';
class DrawerPageHeader extends StatefulWidget {
  @override
  _DrawerPageHeaderState createState() => _DrawerPageHeaderState();
}

class _DrawerPageHeaderState extends State<DrawerPageHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/backapp.png"), fit: BoxFit.cover)),
      height: 150,
      child: Container(
        padding: EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("images/simbolos.png"),
          ],
        ),
      ),
    );
  }
}
