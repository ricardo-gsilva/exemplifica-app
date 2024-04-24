// ignore_for_file: must_be_immutable

import 'package:exemplifica/ad_mob/ad_mob.dart';
import 'package:exemplifica/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  String? version;
  SplashScreen({
    this.version,
    super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final controller = Get.put(AdHelper());
  
  @override
  void initState() {
    super.initState();    
    splashScreen();
  }  

  void splashScreen() {
    controller.loadingBannerHome(AdHelper.bannerHome);
    Future.delayed(Duration(seconds: 5), (){
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (_) => HomePage()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Image(image: AssetImage('images/splashapp.png'),
              fit: BoxFit.cover),
            ),
            Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * .8,
                  child: Image(image: AssetImage('images/exemplo_3.png'),
                    ),
                  )
                ],
              )          
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                child: Text(
                  'Versão: ${widget.version?? ''}',
                  style: TextStyle(fontSize: 22),
                ),
              ),
            )
          ],            
      ),      
    );
  }
}