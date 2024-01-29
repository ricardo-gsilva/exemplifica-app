// ignore_for_file: camel_case_types

import 'package:exemplifica/ad_mob/ad_mob.dart';
import 'package:exemplifica/utils/constants/core_colors.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/person_icons.dart';
import 'package:exemplifica/screens/calculadoras/calc_equacao_1.dart';
import 'package:exemplifica/screens/widgets/bottombar_banner.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Equacao_1 extends StatefulWidget {
  @override
  _Equacao_1State createState() => _Equacao_1State();
}
class _Equacao_1State extends State<Equacao_1> {
  final controller = Get.put(AdHelper());
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CoreColors.colorBackground,
      appBar: AppBar(
        backgroundColor: CoreColors.appBarColor,
        title: Text(
          CoreStrings.titleEquacao1,
          style: TextStyle(color: CoreColors.textPrimary),
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.reply),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Person.calc,
              color: CoreColors.textPrimary
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CalcEquacao1()));
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(CoreStrings.text1_Equacao1,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child:
                      Image.asset("images/operacoes/equacao_1/equacao1_2.png"),
                )),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(CoreStrings.text2_Equacao1,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * .5,
                  child:
                      Image.asset("images/operacoes/equacao_1/equacao1_3.png"),
                )),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(CoreStrings.text3_Equacao1,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * .5,
                  child:
                      Image.asset("images/operacoes/equacao_1/equacao1_4.png"),
                )),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(CoreStrings.text4_Equacao1,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * .4,
                  child:
                      Image.asset("images/operacoes/equacao_1/equacao1_5.png"),
                )),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(CoreStrings.text5_Equacao1,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * .4,
                  child:
                      Image.asset("images/operacoes/equacao_1/equacao1_6.png"),
                )),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(CoreStrings.text6_Equacao1,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * .6,
                  child:
                      Image.asset("images/operacoes/equacao_1/equacao1_7.png"),
                )),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 25),
              child: Text(CoreStrings.text7_Equacao1,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomBarBanner(
        banner: controller.bannerAdEquacao1,
        bannerAd: controller.bannerAd),
    );
  }
}
