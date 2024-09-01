import 'package:exemplifica/utils/constants/core_colors.dart';
import 'package:exemplifica/view/page/splash_screen_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:package_info_plus/package_info_plus.dart';

late bool releaseMode;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  releaseMode = kReleaseMode ? true : false;
  PackageInfo? packageInfo;
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  packageInfo = await PackageInfo.fromPlatform();

  runApp(ScreenExemplifica(version: packageInfo.version));
}

class ScreenExemplifica extends StatelessWidget {
  final String? version;
  ScreenExemplifica({
    Key? key,
    this.version,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        iconTheme: IconThemeData(color: CoreColors.colorIcon),
        scaffoldBackgroundColor: CoreColors.colorBackground,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: CoreColors.btnBakcgroundColor,
          ),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: CoreColors.appBarColor,
          actionsIconTheme: IconThemeData(color: CoreColors.colorIcon),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreenPage(version: version),
    );
  }
}
