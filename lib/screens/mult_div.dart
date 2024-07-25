import 'package:exemplifica/services/ad_mob.dart';
import 'package:exemplifica/utils/constants/core_colors.dart';
import 'package:exemplifica/screens/home_page.dart';
import 'package:exemplifica/widgets/bottombar_banner.dart';
import 'package:exemplifica/utils/constants/strings/strings_mult_div.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MultiplicaDiv extends StatefulWidget {
  @override
  _MultiplicaDivState createState() => _MultiplicaDivState();
}

class _MultiplicaDivState extends State<MultiplicaDiv> {
  final controller = Get.put(AdHelper());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CoreColors.colorBackground,
        appBar: AppBar(
          backgroundColor: CoreColors.appBarColor,
          title: Text(
            CoreStringsMultDiv.titleMultipDiv,
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
            child: Column(children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              CoreStringsMultDiv.text1_MultiplicaDiv,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: MediaQuery.of(context).size.width * .4,
                child: Image.asset("images/mult_div/multiplica_divi_2.png"),
              )),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              CoreStringsMultDiv.text2_MultiplicaDiv,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              CoreStringsMultDiv.text3_MultiplicaDiv,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: MediaQuery.of(context).size.width * .4,
                child: Image.asset("images/mult_div/multiplica_divi_3.png"),
              )),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              CoreStringsMultDiv.text4_MultiplicaDiv,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: MediaQuery.of(context).size.width * .4,
                child: Image.asset("images/mult_div/multiplica_divi_4.png"),
              )),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              CoreStringsMultDiv.text5_MultiplicaDiv,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: MediaQuery.of(context).size.width * .4,
                child: Image.asset("images/mult_div/multiplica_divi_5.png"),
              )),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              CoreStringsMultDiv.text6_MultiplicaDiv,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              CoreStringsMultDiv.text7_MultiplicaDiv,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: MediaQuery.of(context).size.width * .5,
                child: Image.asset("images/mult_div/multiplica_divi_11.png"),
              )),
          Icon(
            Icons.close,
            color: Colors.red,
            size: 50,
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              CoreStringsMultDiv.text8_MultiplicaDiv,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: MediaQuery.of(context).size.width * .5,
                child: Image.asset("images/mult_div/multiplica_divi_12.png"),
              )),
          Icon(
            Icons.check,
            color: Colors.red,
            size: 50,
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              CoreStringsMultDiv.text9_MultiplicaDiv,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              CoreStringsMultDiv.text10_MultiplicaDiv,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              CoreStringsMultDiv.text11_MultiplicaDiv,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: MediaQuery.of(context).size.width * .55,
                child: Image.asset("images/mult_div/multiplica_divi_8.png"),
              )),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              CoreStringsMultDiv.text12_MultiplicaDiv,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: MediaQuery.of(context).size.width * .35,
                child: Image.asset("images/mult_div/multiplica_divi_9.png"),
              )),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              CoreStringsMultDiv.text13_MultiplicaDiv,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: MediaQuery.of(context).size.width * .4,
                child: Image.asset("images/mult_div/multiplica_divi_10.png"),
              )),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 40),
            child: Text(
              CoreStringsMultDiv.text14_MultiplicaDiv,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
        ])
      ),
      bottomNavigationBar: BottomBarBanner(banner: controller.bannerAdMultDiv, bannerAd: controller.bannerAd),
      );
  }
}
