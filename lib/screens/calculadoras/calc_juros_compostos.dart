import 'package:exemplifica/services/ad_mob.dart';
import 'package:exemplifica/utils/constants/core_colors.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/controller/model_juros_compostos.dart';
import 'package:exemplifica/screens/components/row_buttons.dart';
import 'package:exemplifica/screens/home_page.dart';
import 'package:exemplifica/screens/widgets/bottombar_banner.dart';
import 'package:exemplifica/screens/components/text_field_input.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalcJurosC extends StatefulWidget {
  @override
  _CalcJurosCState createState() => _CalcJurosCState();
}

class _CalcJurosCState extends State<CalcJurosC> {
  final ModelJurosCompostos modelJurosCompostos = ModelJurosCompostos();
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
          CoreStrings.titleJurosCompostos,
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
              child: Column(children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Text(
                "Digite os valores de Capital, taxa mensal de juros e tempo em meses.",
                style: TextStyle(fontSize: 18.0),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: CoreColors.appBarColor,
                borderRadius: BorderRadius.circular(15)
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 55,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "M = C(1 + i)",
                          style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(" t",
                              style: TextStyle(
                                  fontSize: 25.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        )
                      ],
                    ),
                  ),
                  TextFieldInput(
                    title: "Capital:",
                    hintText: "capital(R\$)",
                    controller: modelJurosCompostos.c
                  ),
                  TextFieldInput(
                    title: "Taxa",
                    hintText: "% a.m",
                    controller: modelJurosCompostos.i
                  ),
                  TextFieldInput(
                    title: "Meses",
                    hintText: "Tempo",
                    controller: modelJurosCompostos.t
                  ),            
                  RowButtons(
                    titleFirst: CoreStrings.calc,
                    titleSecond: CoreStrings.clear,
                    paddingTop: 10,
                    height: height,
                    width: width,
                    onTapFirst: (() {
                      setState(() {
                        if (controller.calcJurosC < 6) {
                          controller.calcJurosC++;
                        } else {
                          controller.calcJurosC = 0.obs;
                        }
                        controller.checkValueForInterstitial(AdHelper.videoCalcJurosC, controller.calcJurosC);
                        modelJurosCompostos.verificarCampos();
                      });
                    }),
                    onTapSecond: (() {
                      setState(() {
                        modelJurosCompostos.resetCampos();
                      });
                    }),
                  ),
                ],
              ),
            ),
            Visibility(
              visible: modelJurosCompostos.visible,
              child: Padding(
                padding: EdgeInsets.only(right: 5, left: 5),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 10, top: 15),
                      child: Text(
                        modelJurosCompostos.resultjC,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: CoreColors.textPrimary, fontSize: 21.0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        modelJurosCompostos.resultjC_1,
                        style: TextStyle(
                            fontSize: 35.0,
                            color: Colors.red,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]))),
          bottomNavigationBar: BottomBarBanner(banner: controller.bannerAdCalcJurosC, bannerAd: controller.bannerAd),      
    );
  }
}
