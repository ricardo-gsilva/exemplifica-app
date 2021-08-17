import 'package:exemplifica_git/ad_mob/ad_mob.dart';
import 'package:flutter/material.dart';

class ButtonHome extends StatelessWidget {

  final AdMob adMob = AdMob();

  ButtonHome({this.page, this.title});

  String title;
  Widget page;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Container(
        height: MediaQuery.of(context).size.height * .07,
        width: MediaQuery.of(context).size.width * .35,
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.blueAccent,
            primary: Colors.white,
            elevation: 15,
            shadowColor: Colors.blue,
          ),
          onPressed: () {
            adMob.showInstersticialHome();
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => page));
          },
          child: Text(
            title,
            style: TextStyle(fontSize: 20.0),
          ),
        ),
      ),
    );
  }
}
