import 'package:exemplifica/services/ad_mob.dart';
import 'package:exemplifica/utils/constants/core_colors.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/controller/controller_tabuada.dart';
import 'package:exemplifica/components/row_buttons.dart';
import 'package:exemplifica/screens/home_page.dart';
import 'package:exemplifica/widgets/bottombar_banner.dart';
import 'package:exemplifica/components/text_field_input.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalcTabuada extends StatefulWidget {
  @override
  _CalcTabuadaState createState() => _CalcTabuadaState();
}

class _CalcTabuadaState extends State<CalcTabuada> {
  final _modelTabuada = ModelTabuada();
  final controller = Get.put(AdHelper());
  double height = 0;
  double width = 0;
  bool visible = false;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width * 0.35;
    height = MediaQuery.of(context).size.height * 0.1;
    return Scaffold(
      backgroundColor: CoreColors.colorBackground,
      appBar: AppBar(
        backgroundColor: CoreColors.appBarColor,
        title: Text(
          CoreStrings.titleTabuada,
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
              "Digite um número no campo abaixo que seja entre 0 e 99999 e use o botão de calcular para que você possa"
              " ver a tabuada do número escolhido.",
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
            child: Column(
              children: [
                TextFieldInput(
                  title: "Valor:",
                  hintText: "Digite aqui",
                  controller: _modelTabuada.nTabuada,
                  maxLength: 5,
                ),          
                RowButtons(
                  titleFirst: CoreStrings.calc,
                  titleSecond: CoreStrings.clear,
                  paddingTop: 10,
                  height: height,
                  width: width,
                  onTapFirst: (() {
                    setState(() {
                      if (controller.calcTab < 6) {
                        controller.calcTab++;
                      } else {
                        controller.calcTab = 0.obs;
                      }
                      controller.checkValueForInterstitial(
                          AdHelper.videoCalcTabuada, controller.calcTab);
                      _modelTabuada.verificarCampo();                
                    });
                  }),
                  onTapSecond: (() {
                    setState(() {
                      _modelTabuada.resetCampos();
                    });
                  }),
                ),
              ],
            ),
          ),
          Visibility(
            visible: _modelTabuada.visible,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text(
                    _modelTabuada.infoText,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: CoreColors.textPrimary, fontSize: 25.0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text(
                    _modelTabuada.dica,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: CoreColors.textPrimary, fontSize: 25.0),
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
      bottomNavigationBar: BottomBarBanner(banner: controller.bannerAdCalcTabuada, bannerAd: controller.bannerAd),      
    );
  }
}
