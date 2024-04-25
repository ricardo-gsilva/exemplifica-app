import 'package:exemplifica/services/ad_mob.dart';
import 'package:exemplifica/utils/constants/core_colors.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/controller/model_mdc.dart';
import 'package:exemplifica/screens/components/row_buttons.dart';
import 'package:exemplifica/screens/home_page.dart';
import 'package:exemplifica/screens/widgets/bottombar_banner.dart';
import 'package:exemplifica/screens/components/text_field_input.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalcMdc extends StatefulWidget {
  @override
  _CalcMdcState createState() => _CalcMdcState();
}

class _CalcMdcState extends State<CalcMdc> {
  final ModelMdc modelMdc = ModelMdc();
  final controller = Get.put(AdHelper());
  double height = 0;
  double width = 0;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width * 0.35;
    height = MediaQuery.of(context).size.height * 0.1;
    return Scaffold(
      backgroundColor: CoreColors.colorBackground,
      appBar: AppBar(
        backgroundColor: CoreColors.appBarColor,
        title: Text(
          CoreStrings.titleMdc,
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
                "Digite 2 números para efetuar o cálculo do MDC!",
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: CoreColors.appBarColor,
                borderRadius: BorderRadius.circular(15)
              ),
              child: Column(children: [
                TextFieldInput(
              title: "Valor 1",
              hintText: "",
              controller: modelMdc.val1
                ),
                TextFieldInput(
                  title: "Valor 2",
                  hintText: "",
                  controller: modelMdc.val2
                ),            
                RowButtons(
                  titleFirst: CoreStrings.calc,
                  titleSecond: CoreStrings.clear,
                  paddingTop: 10,
                  height: height,
                  width: width,
                  onTapFirst: (() {
                    setState(() {
                      if (controller.calcMdc < 6) {
                        controller.calcMdc++;
                      } else {
                        controller.calcMdc = 0.obs;
                      }
                      controller.checkValueForInterstitial(
                          AdHelper.videoCalcMdc, controller.calcMdc);
                      modelMdc.verificarCampos();
                    });
                  }),
                  onTapSecond: (() {
                    setState(() {
                      modelMdc.resetCampos();
                    });
                  }),
                ),
              ]),
            ),
            Visibility(
              visible: modelMdc.visible,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      modelMdc.resultMdc,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: CoreColors.textPrimary, fontSize: 21.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Text(
                      modelMdc.resultMdc1,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: CoreColors.textPrimary, fontSize: 21.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Text(
                      modelMdc.resultMdc2,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: CoreColors.textPrimary, fontSize: 21.0),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomBarBanner(banner: controller.bannerAdCalcMdc, bannerAd: controller.bannerAd),      
    );
  }
}
