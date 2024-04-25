import 'package:exemplifica/services/ad_mob.dart';
import 'package:exemplifica/utils/constants/core_colors.dart';
import 'package:exemplifica/person_icons.dart';
import 'package:exemplifica/screens/calculadoras/calc_juros_compostos.dart';
import 'package:exemplifica/screens/widgets/bottombar_banner.dart';
import 'package:exemplifica/utils/constants/strings/strings_juros_compostos.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class JurosCompostos extends StatefulWidget {
  @override
  _JurosCompostosState createState() => _JurosCompostosState();
}

class _JurosCompostosState extends State<JurosCompostos> {
  final controller = Get.put(AdHelper());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CoreColors.colorBackground,
        appBar: AppBar(
          backgroundColor: CoreColors.appBarColor,
          title: Text(
            CoreStringsJurosCompostos.titleJurosCompostos,
            style: TextStyle(color: CoreColors.textPrimary),
          ),
          centerTitle: true,
        automaticallyImplyLeading: false,
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
                color: CoreColors.textPrimary,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CalcJurosC()));
              },
            )
          ],
        ),
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              CoreStringsJurosCompostos.text1_JurosCompostos,              
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              CoreStringsJurosCompostos.text2_JurosCompostos,                            
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  CoreStringsJurosCompostos.text3_JurosCompostos,                  
                  style: TextStyle(fontSize: 16.0),
                ),
              )),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              CoreStringsJurosCompostos.text4_JurosCompostos,                                
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              CoreStringsJurosCompostos.text5_JurosCompostos,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
            child: Container(
              width: MediaQuery.of(context).size.width * .6,
              child: Image.asset(
                  "images/operacoes/juros_compostos/jurosCompostos_2.png"),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              CoreStringsJurosCompostos.text6_JurosCompostos,              
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              CoreStringsJurosCompostos.text7_JurosCompostos,               
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              CoreStringsJurosCompostos.text8_JurosCompostos,              
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              CoreStringsJurosCompostos.text9_JurosCompostos,
              textAlign: TextAlign.start,             
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              CoreStringsJurosCompostos.text10_JurosCompostos,              
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
            child: Container(
              width: MediaQuery.of(context).size.width * .8,
              child: Image.asset(
                  "images/operacoes/juros_compostos/jurosCompostos_3.png"),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              CoreStringsJurosCompostos.text11_JurosCompostos,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
            child: Container(
              width: MediaQuery.of(context).size.width * .8,
              child: Image.asset(
                  "images/operacoes/juros_compostos/jurosCompostos_4.png"),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              CoreStringsJurosCompostos.text12_JurosCompostos,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              CoreStringsJurosCompostos.text13_JurosCompostos,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              CoreStringsJurosCompostos.text14_JurosCompostos,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              CoreStringsJurosCompostos.text15_JurosCompostos,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
            child: Container(
              width: MediaQuery.of(context).size.width * .8,
              child: Image.asset(
                  "images/operacoes/juros_compostos/jurosCompostos_5.png"),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              CoreStringsJurosCompostos.text16_JurosCompostos,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              CoreStringsJurosCompostos.text17_JurosCompostos,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
            child: Container(
              width: MediaQuery.of(context).size.width * .45,
              child: Image.asset(
                  "images/operacoes/juros_compostos/jurosCompostos_6.png"),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              CoreStringsJurosCompostos.text18_JurosCompostos,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
            child: Container(
              width: MediaQuery.of(context).size.width * .5,
              child: Image.asset(
                  "images/operacoes/juros_compostos/jurosCompostos_7.png"),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              CoreStringsJurosCompostos.text19_JurosCompostos,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
            child: Container(
              width: MediaQuery.of(context).size.width * .65,
              child: Image.asset(
                  "images/operacoes/juros_compostos/jurosCompostos_8.png"),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              CoreStringsJurosCompostos.text20_JurosCompostos,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
            child: Container(
              width: MediaQuery.of(context).size.width * .5,
              child: Image.asset(
                  "images/operacoes/juros_compostos/jurosCompostos_9.png"),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              CoreStringsJurosCompostos.text21_JurosCompostos,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
        ]
      )
    ),
    bottomNavigationBar: BottomBarBanner(banner: controller.bannerAdJurosC, bannerAd: controller.bannerAd),    
    );
  }
}
