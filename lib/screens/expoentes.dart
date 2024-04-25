import 'package:exemplifica/services/ad_mob.dart';
import 'package:exemplifica/utils/constants/core_colors.dart';
import 'package:exemplifica/screens/home_page.dart';
import 'package:exemplifica/screens/widgets/bottombar_banner.dart';
import 'package:exemplifica/utils/constants/strings/strings_expoentes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Expoentes extends StatefulWidget {
  @override
  _ExpoentesState createState() => _ExpoentesState();
}

class _ExpoentesState extends State<Expoentes> {
  final controller = Get.put(AdHelper());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CoreColors.colorBackground,
      appBar: AppBar(
          backgroundColor: CoreColors.appBarColor,
          title: Text(
            CoreStringsExpoentes.titleExpoentes,
            style: TextStyle(color: CoreColors.textPrimary),
          ),
          centerTitle: true,
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: Icon(
              Icons.reply,
              color: CoreColors.textPrimary,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [
            IconButton(
            icon: Icon(
              Icons.home,
              color: CoreColors.textPrimary,
            ),
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => HomePage()),
                  (Route<dynamic> route) => false);
            },
          ),
          ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[            
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                CoreStringsExpoentes.text1_expoentes,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * .9,
                  child: Image.asset("images/expoentes/expoentes_2.png"),
                )),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                CoreStringsExpoentes.text2_expoentes,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * .25,
                  child: Image.asset("images/expoentes/expoentes_3.png"),
                )),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                CoreStringsExpoentes.text3_expoentes,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * .20,
                  child: Image.asset("images/expoentes/expoentes_4.png"),
                )),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                CoreStringsExpoentes.text4_expoentes,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 40),
                child: Container(
                  width: MediaQuery.of(context).size.width * .20,
                  child: Image.asset("images/expoentes/expoentes_5.png"),
                )),
          ],
        ),
      ),
      bottomNavigationBar: BottomBarBanner(
        banner: controller.bannerAdExpoentes,
        bannerAd: controller.bannerAd
      ),
    );
  }
}
