import 'package:exemplifica/services/ad_mob.dart';
import 'package:exemplifica/utils/constants/core_colors.dart';
import 'package:exemplifica/person_icons.dart';
import 'package:exemplifica/screens/calculadoras/calc_juros_simples.dart';
import 'package:exemplifica/widgets/bottombar_banner.dart';
import 'package:exemplifica/utils/constants/strings/strings_juros_simples.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class JurosSimples extends StatefulWidget {
  @override
  _JurosSimplesState createState() => _JurosSimplesState();
}

class _JurosSimplesState extends State<JurosSimples> {
  final controller = Get.put(AdHelper());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CoreColors.colorBackground,
        appBar: AppBar(
          backgroundColor: CoreColors.appBarColor,
          automaticallyImplyLeading: false,
          title: Text(
            CoreStringsJurosSimples.titleJurosSimples,
            style: TextStyle(color: CoreColors.textPrimary),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.reply,
              color: CoreColors.textPrimary,
            ),
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
                    MaterialPageRoute(builder: (context) => CalcJurosS()));
              },
            )
          ],
        ),
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              CoreStringsJurosSimples.text1_JurosSimples,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              CoreStringsJurosSimples.text2_JurosSimples,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  CoreStringsJurosSimples.text3_JurosSimples,
                  style: TextStyle(fontSize: 16.0),
                ),
              )),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              CoreStringsJurosSimples.text4_JurosSimples,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
            child: Container(
              width: MediaQuery.of(context).size.width * .5,
              child: Image.asset(
                  "images/operacoes/juros_simples/jurosSimples_2.png"),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              CoreStringsJurosSimples.text5_JurosSimples,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              CoreStringsJurosSimples.text6_JurosSimples,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
            child: Container(
              width: MediaQuery.of(context).size.width * .5,
              child: Image.asset(
                  "images/operacoes/juros_simples/jurosSimples_3.png"),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              CoreStringsJurosSimples.text7_JurosSimples,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              CoreStringsJurosSimples.text8_JurosSimples,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
            child: Container(
              width: MediaQuery.of(context).size.width * .9,
              child: Image.asset(
                  "images/operacoes/juros_simples/jurosSimples_4.png"),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15.0, bottom: 5.0),
            child: Container(
              width: MediaQuery.of(context).size.width * .8,
              child: Image.asset(
                  "images/operacoes/juros_simples/jurosSimples_5.png"),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15.0, bottom: 5.0),
            child: Container(
              width: MediaQuery.of(context).size.width * .65,
              child: Image.asset(
                  "images/operacoes/juros_simples/jurosSimples_6.png"),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 25),
            child: Text(
              CoreStringsJurosSimples.text9_JurosSimples,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
        ])
      ),
      bottomNavigationBar: BottomBarBanner(banner: controller.bannerAdCalcJurosS, bannerAd: controller.bannerAd),
      );
  }
}
