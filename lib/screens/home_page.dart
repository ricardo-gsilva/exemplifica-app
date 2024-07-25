import 'package:exemplifica/services/ad_mob.dart';
import 'package:exemplifica/utils/constants/core_colors.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/screens/calculadoras.dart';
import 'package:exemplifica/components/row_buttons.dart';
import 'package:exemplifica/person_icons.dart';
import 'package:exemplifica/screens/equacao_1.dart';
import 'package:exemplifica/screens/equacao_2.dart';
import 'package:exemplifica/screens/fatorial.dart';
import 'package:exemplifica/screens/juros_compostos.dart';
import 'package:exemplifica/screens/juros_simples.dart';
import 'package:exemplifica/screens/mdc.dart';
import 'package:exemplifica/screens/mmc.dart';
import 'package:exemplifica/screens/porcentagem.dart';
import 'package:exemplifica/screens/regra_de_3.dart';
import 'package:exemplifica/screens/regras_basicas.dart';
import 'package:exemplifica/screens/tabuada.dart';
import 'package:exemplifica/widgets/bottombar_banner.dart';
import 'package:exemplifica/widgets/button_custom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = Get.put(AdHelper());
  double height = 0.0;
  double width = 0.0;

  @override
  void didChangeDependencies() {
    controller.loadingBannerRegrasBasicas(AdHelper.bannerRegrasBasicas);
    controller.loadingBannerCalculadoras(AdHelper.bannerCalculadoras);
    controller.loadingBannerEquacao1(AdHelper.bannerEquacao1);
    controller.loadingBannerEquacao2(AdHelper.bannerEquacao2);
    controller.loadingBannerFatorial(AdHelper.bannerFatorial);
    controller.loadingBannerTabuada(AdHelper.bannerTabuada);
    controller.loadingBannerJurosCompostos(AdHelper.bannerJurosCompostos);
    controller.loadingBannerJurosSimples(AdHelper.bannerJurosSimples);
    controller.loadingBannerMmc(AdHelper.bannerMmc);
    controller.loadingBannerMdc(AdHelper.bannerMdc);
    controller.loadingBannerPorcentagem(AdHelper.bannerPorcentagem);
    controller.loadingBannerRegraDe3(AdHelper.bannerRegrade3);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height * 0.1;
    width = MediaQuery.of(context).size.width * 0.444;
    return Scaffold(
      backgroundColor: CoreColors.colorBackground,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
            backgroundColor: CoreColors.appBarColor,
            elevation: 2,
            centerTitle: true,
            title: Image.asset(
              'images/exemplo_3.png',
              height: 45,
            )),
      ),
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: CoreColors.appBarColor,
                borderRadius: BorderRadius.circular(15)
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: height * 2.2,
                        width: width,
                        child: ButtonBase(
                          height: height,
                          title: CoreStrings.titleCalculadoras,
                          visible: true,
                          icon: Person.calc,
                          onTap: () {
                            controller.calc++;
                            controller.checkValueForInterstitial(AdHelper.videoCalc, controller.calc);
                            if (controller.loading == false) {
                              Navigator.push(context, MaterialPageRoute(builder: (_) => Calculadoras()));
                            } else {
                              Future.delayed(Duration(seconds: 1),(){
                                Navigator.push(context, MaterialPageRoute(builder: (_) => Calculadoras()));
                              });
                            }
                            
                          },
                        ),
                      ),
                      SizedBox(
                        height: height * 2.2,
                        width: width,
                        child: ButtonBase(
                          height: height,
                          title: CoreStrings.titleRegrasBasicas,
                          visible: true,
                          icon: Person.attention,
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (_) => RegrasBasicas()));
                          },
                        ),
                      ),
                    ],
                  ),                  
                  RowButtons(
                    height: height,
                    width: width,
                    titleFirst: CoreStrings.titleEquacao1,
                    titleSecond: CoreStrings.titleEquacao2,
                    onTapFirst: () {                      
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => Equacao_1()));
                    },
                    onTapSecond: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => Equacao_2()));
                    },
                  ),
                  RowButtons(
                    height: height,
                    width: width,
                    titleFirst: CoreStrings.titleFatorial,
                    titleSecond: CoreStrings.titleTabuada,
                    onTapFirst: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => Fatorial()));
                    },
                    onTapSecond: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => Tabuada()));
                    },
                  ),
                  RowButtons(
                    height: height,
                    width: width,
                    titleFirst: CoreStrings.titleJurosCompostos,
                    titleSecond: CoreStrings.titleJurosSimples,
                    onTapFirst: () {                      
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => JurosCompostos()));
                    },
                    onTapSecond: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => JurosSimples()));
                    },
                  ),
                  RowButtons(
                    height: height,
                    width: width,
                    titleFirst: CoreStrings.titleMmc,
                    titleSecond: CoreStrings.titleMdc,
                    onTapFirst: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (_) => Mmc()));
                    },
                    onTapSecond: () {
                     Navigator.push(
                          context, MaterialPageRoute(builder: (_) => Mdc()));
                    },
                  ),
                  RowButtons(
                    height: height,
                    width: width,
                    titleFirst: CoreStrings.titlePorcentagem,
                    titleSecond: CoreStrings.titleRegraDe3,
                    onTapFirst: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => Porcentagem()));
                    },
                    onTapSecond: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => RegraDe3()));
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomBarBanner(
        banner: controller.bannerAdHome, bannerAd: controller.bannerAd),      
    );
  }

  @override
  void dispose() {
    controller.bannerAdHome?.dispose();
    super.dispose();
  }
}
