// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:package_info_plus/package_info_plus.dart';

import 'package:exemplifica/screens/splash_screen.dart';

late bool releaseMode;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  releaseMode = kReleaseMode? true : false;
  MobileAds.instance.initialize();
  PackageInfo? packageInfo;
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  packageInfo = await PackageInfo.fromPlatform();

  runApp(ScreenExemplifica(version: packageInfo.version));
}

class ScreenExemplifica extends StatelessWidget {
  String? version; 
  ScreenExemplifica({
    Key? key,
    this.version,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Container(),
      home: SplashScreen(version: version),   
    );
  }
}