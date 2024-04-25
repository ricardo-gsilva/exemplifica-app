import 'package:exemplifica/services/ad_mob.dart';
import 'package:exemplifica/utils/constants/core_colors.dart';
import 'package:exemplifica/person_icons.dart';
import 'package:exemplifica/screens/calculadoras/cald_fatorial.dart';
import 'package:exemplifica/screens/widgets/bottombar_banner.dart';
import 'package:exemplifica/utils/constants/strings/strings_fatorial.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Fatorial extends StatefulWidget {
  @override
  _FatorialState createState() => _FatorialState();
}

class _FatorialState extends State<Fatorial> {
  final controller = Get.put(AdHelper());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CoreColors.colorBackground,
      appBar: AppBar(
        backgroundColor: CoreColors.appBarColor,
        title: Text(
          CoreStringsFatorial.titleFatorial,
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
            icon: Icon(Person.calc, color: CoreColors.textPrimary),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CalcFatorial()));
            },
          )
        ],
      ),
      body: SingleChildScrollView(
          child: Column(children: [
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            CoreStringsFatorial.text1_Fatorial,
            style: TextStyle(fontSize: 16.0),
          ),
        ),
        Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              width: MediaQuery.of(context).size.width * 1.0,
              child: Image.asset("images/operacoes/fatorial/fatorial_2.png"),
            )),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            CoreStringsFatorial.text2_Fatorial,
            style: TextStyle(fontSize: 16.0),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            CoreStringsFatorial.text3_Fatorial,
            style: TextStyle(fontSize: 20.0, color: Colors.red),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            CoreStringsFatorial.text4_Fatorial,
            style: TextStyle(fontSize: 16.0),
          ),
        ),
        Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              width: MediaQuery.of(context).size.width * .40,
              child: Image.asset("images/operacoes/fatorial/fatorial_4.png"),
            )),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            CoreStringsFatorial.text5_Fatorial,
            style: TextStyle(fontSize: 16.0),
          ),
        ),
        Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              width: MediaQuery.of(context).size.width * .50,
              child: Image.asset("images/operacoes/fatorial/fatorial_5.png"),
            )),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            CoreStringsFatorial.text6_Fatorial,
            style: TextStyle(fontSize: 16.0),
          ),
        ),
        Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              width: MediaQuery.of(context).size.width * .40,
              child: Image.asset("images/operacoes/fatorial/fatorial_6.png"),
            )),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            CoreStringsFatorial.text7_Fatorial,
            style: TextStyle(fontSize: 16.0),
          ),
        ),
        Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              width: MediaQuery.of(context).size.width * .40,
              child: Image.asset("images/operacoes/fatorial/fatorial_7.png"),
            )),
        Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Text(
                CoreStringsFatorial.text8_Fatorial,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            )),
        Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              width: MediaQuery.of(context).size.width * .40,
              child: Image.asset("images/operacoes/fatorial/fatorial_9.png"),
            )),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            CoreStringsFatorial.text9_Fatorial,
            style: TextStyle(fontSize: 16.0),
          ),
        ),
        Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              width: MediaQuery.of(context).size.width * .8,
              child: Image.asset("images/operacoes/fatorial/fatorial_10.png"),
            )),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            CoreStringsFatorial.text10_Fatorial,
            style: TextStyle(fontSize: 16.0),
          ),
        ),
        Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Text(
                CoreStringsFatorial.text11_Fatorial,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            )),
        Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Image.asset("images/operacoes/fatorial/fatorial_12.png"),
            )),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            CoreStringsFatorial.text12_Fatorial,
            style: TextStyle(fontSize: 16.0),
          ),
        ),
        Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              width: MediaQuery.of(context).size.width * .5,
              child: Image.asset("images/operacoes/fatorial/fatorial_13.png"),
            )),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            CoreStringsFatorial.text13_Fatorial,
            style: TextStyle(fontSize: 16.0),
          ),
        ),
        Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              width: MediaQuery.of(context).size.width * .55,
              child: Image.asset("images/operacoes/fatorial/fatorial_14.png"),
            )),
        Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Text(
                CoreStringsFatorial.text14_Fatorial,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            )),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            CoreStringsFatorial.text15_Fatorial,
            style: TextStyle(fontSize: 16.0),
          ),
        ),
        Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              width: MediaQuery.of(context).size.width * .15,
              child: Image.asset("images/operacoes/fatorial/fatorial_16.png"),
            )),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            CoreStringsFatorial.text16_Fatorial,
            style: TextStyle(fontSize: 16.0),
          ),
        ),
        Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              width: MediaQuery.of(context).size.width * .5,
              child: Image.asset("images/operacoes/fatorial/fatorial_17.png"),
            )),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            CoreStringsFatorial.text17_Fatorial,
            style: TextStyle(fontSize: 16.0),
          ),
        ),
        Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Text(
                CoreStringsFatorial.text18_Fatorial,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            )),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            CoreStringsFatorial.text19_Fatorial,
            style: TextStyle(fontSize: 16.0),
          ),
        ),
        Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              width: MediaQuery.of(context).size.width * .8,
              child: Image.asset("images/operacoes/fatorial/fatorial_19.png"),
            )),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            CoreStringsFatorial.text20_Fatorial,            
            style: TextStyle(fontSize: 16.0),
          ),
        ),
        Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              width: MediaQuery.of(context).size.width * .55,
              child: Image.asset("images/operacoes/fatorial/fatorial_20.png"),
            )),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            CoreStringsFatorial.text21_Fatorial,            
            style: TextStyle(fontSize: 16.0),
          ),
        ),
        Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 25),
            child: Container(
              width: MediaQuery.of(context).size.width * .5,
              child: Image.asset("images/operacoes/fatorial/fatorial_21.png"),
            )),
      ])),
      bottomNavigationBar: BottomBarBanner(
        banner: controller.bannerAdFatorial,
        bannerAd: controller.bannerAd
      ),
    );
  }
}
