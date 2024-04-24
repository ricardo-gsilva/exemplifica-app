import 'package:exemplifica/ad_mob/ad_mob.dart';
import 'package:exemplifica/screens/components/text_field_input.dart';
import 'package:exemplifica/utils/constants/core_colors.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/controller/model_porcentagem.dart';
import 'package:exemplifica/screens/components/row_buttons.dart';
import 'package:exemplifica/screens/home_page.dart';
import 'package:exemplifica/screens/widgets/bottombar_banner.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalcPorcentagem extends StatefulWidget {
  @override
  _CalcPorcentagemState createState() => _CalcPorcentagemState();
}

class _CalcPorcentagemState extends State<CalcPorcentagem> {
  final ModelPorcentagem modelPorcentagem = ModelPorcentagem();
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
          CoreStrings.titlePorcentagem,
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
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Text(
                "Digite os valores nos campos abaixo para calcular a porcentagem.",
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
                  Padding(
                    padding: EdgeInsets.only(left: 25, top: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          "Atributo 1",
                          style: TextStyle(fontSize: 20.0),
                        ),
                        Text(
                          "Atributo 2",
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(right: 50, top: 5),
                        child: TextFieldInput(
                          hintText: "",
                          title: "",
                          controller: modelPorcentagem.val1,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10, right: 30),
                        child: Text(
                          "100",
                          style: TextStyle(fontSize: 23.0),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(right: 70, top: 5),
                        child: TextFieldInput(
                          hintText: "",
                          title: "",
                          controller: modelPorcentagem.val2,
                        ),
                      ),                
                      Padding(
                        padding: EdgeInsets.only(top: 10, right: 30),
                        child: Text(
                          "X",
                          style: TextStyle(fontSize: 23.0),
                        ),
                      ),
                    ],
                  ),
                  RowButtons(
                    titleFirst: CoreStrings.calc,
                    titleSecond: CoreStrings.clear,
                    paddingTop: 10,
                    height: height,
                    width: width,
                    onTapFirst: (() {
                      setState(() {
                        if (controller.calcPorcent < 6) {
                          controller.calcPorcent++;
                        } else {
                          controller.calcPorcent = 0.obs;
                        }
                        controller.checkValueForInterstitial(
                            AdHelper.videoCalcPorcentagem, controller.calcPorcent);
                        modelPorcentagem.verificarCampos();
                      });
                    }),
                    onTapSecond: (() {
                      setState(() {
                        modelPorcentagem.resetCampos();
                      });
                    }),
                  ),
                ],
              )
            ),
            Visibility(
              visible: modelPorcentagem.visible,
              child: Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(
                  modelPorcentagem.resultPorcent,
                  textAlign: TextAlign.left,
                  style:
                      TextStyle(color: CoreColors.textPrimary, fontSize: 21.0),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomBarBanner(
        banner: controller.bannerAdCalcPorcentagem,
        bannerAd: controller.bannerAd),      
    );
  }
}
