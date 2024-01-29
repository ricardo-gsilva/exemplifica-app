import 'package:exemplifica/ad_mob/ad_mob.dart';
import 'package:exemplifica/utils/constants/core_colors.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/controller/model_equacao_1.dart';
import 'package:exemplifica/screens/components/row_buttons.dart';
import 'package:exemplifica/screens/components/text_field_input.dart';
import 'package:exemplifica/screens/home_page.dart';
import 'package:exemplifica/screens/widgets/bottombar_banner.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalcEquacao1 extends StatefulWidget {
  @override
  _CalcEquacao1State createState() => _CalcEquacao1State();
}

class _CalcEquacao1State extends State<CalcEquacao1> {
  final ModelEquacao1 modelCalc1 = ModelEquacao1();
  final controller = Get.put(AdHelper());
  double height = 0;
  double width = 0;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width * 0.4;
    height = MediaQuery.of(context).size.height * 0.1;
    return Scaffold(
      backgroundColor: CoreColors.colorBackground,
      appBar: AppBar(
        backgroundColor: CoreColors.appBarColor,
        title: Text(
          CoreStrings.titleEquacao1,
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
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Text(
                  CoreStrings.text1_CalcEquacao1,
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Text(
                  CoreStrings.text2_CalcEquacao1,
                  style: TextStyle(
                      fontSize: 23.0,
                      color: Colors.red,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 5),
                child: Text(
                  "Digite os valores de 'a' e 'b'",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              TextFieldInput(
                title: "'a':",
                hintText: "a",
                controller: modelCalc1.val1
              ),
              TextFieldInput(
                title: "'b':",
                hintText: "b",
                controller: modelCalc1.val2
              ),
              RowButtons(
                titleFirst: CoreStrings.calc,
                titleSecond: CoreStrings.clear,
                paddingTop: 10,
                height: height,
                width: width,
                onTapFirst: (() {
                  setState(() {
                    if (controller.calcEq1 < 6) {
                      controller.calcEq1++;
                    } else {
                      controller.calcEq1 = 0.obs;
                    }
                    controller.checkValueForInterstitial(AdHelper.videoCalcEquacao1, controller.calcEq1);
                    modelCalc1.verificarCampo();
                  });
                }),
                onTapSecond: (() {
                  setState(() {
                    modelCalc1.resetCampos();
                  });
                }),
              ),              
              Padding(
                padding:
                    EdgeInsets.all(10),
                child: Text(
                  modelCalc1.resultEq1_1,
                  textAlign: TextAlign.left,
                  style: TextStyle(color: CoreColors.textPrimary, fontSize: 21.0),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomBarBanner(banner: controller.bannerAdCalcEquacao1, bannerAd: controller.bannerAd),
    );
  }
}
