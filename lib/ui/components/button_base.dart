import 'package:exemplifica_git/ad_mob/ad_mob.dart';
import 'package:flutter/material.dart';

class ButtonBase extends StatelessWidget {
  final AdMob adMob = AdMob();

  ButtonBase({this.title, this.page, this.primaryColor});

  String title;
  Color primaryColor;
  Widget page;

  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 0.5, bottom: 5.5),
      child: Container(
        height: MediaQuery.of(context).size.height * .07,
        width: MediaQuery.of(context).size.width * .88,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: primaryColor, // background
            onPrimary: Colors.white,
          ),
          onPressed: () {
            adMob.showInstersticial();
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => page));
          },
          child: Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 22.0),
          ),
        ),
      ),
    );
  }
}


