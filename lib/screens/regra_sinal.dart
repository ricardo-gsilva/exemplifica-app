import 'package:exemplifica/ad_mob/ad_mob.dart';
import 'package:exemplifica/utils/constants/core_colors.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/screens/home_page.dart';
import 'package:exemplifica/screens/widgets/bottombar_banner.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegrasSinais extends StatefulWidget {
  @override
  _RegrasSinaisState createState() => _RegrasSinaisState();
}

class _RegrasSinaisState extends State<RegrasSinais> {
  final controller = Get.put(AdHelper());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CoreColors.colorBackground,
      appBar: AppBar(
          backgroundColor: CoreColors.appBarColor,
          title: Text(
            CoreStrings.titleRegraSinal,
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
                CoreStrings.text1_RegraSinal,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * .6,
                  child: Image.asset("images/regras_sinal/regras_sinais_2.png"),
                )),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                CoreStrings.text2_RegraSinal,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                CoreStrings.text3_RegraSinal,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * .4,
                  child: Image.asset("images/regras_sinal/regras_sinais_5.png"),
                )),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                CoreStrings.text4_RegraSinal,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                CoreStrings.text5_RegraSinal,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * .4,
                  child: Image.asset("images/regras_sinal/regras_sinais_3.png"),
                )),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                CoreStrings.text6_RegraSinal,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                CoreStrings.text7_RegraSinal,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                CoreStrings.text8_RegraSinal,
                style: TextStyle(fontSize: 16.0, color: Colors.red),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                CoreStrings.text9_RegraSinal,
                style: TextStyle(fontSize: 16.0, color: Colors.red),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                CoreStrings.text10_RegraSinal,
                style: TextStyle(fontSize: 16.0, color: Colors.red),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                CoreStrings.text11_RegraSinal,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 40),
              child: Text(
                CoreStrings.text12_RegraSinal,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomBarBanner(banner: controller.bannerAdRegrasSinais, bannerAd: controller.bannerAd),      
    );
  }
}
