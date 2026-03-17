import 'package:exemplifica/core/navigation/app_generate_route.dart';
import 'package:exemplifica/features/splash/presentation/pages/splash_page.dart';
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

  runApp(AppExemplifica(version: packageInfo.version));
}

class AppExemplifica extends StatelessWidget {
  final String? version;
  AppExemplifica({
    Key? key,
    this.version,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: AppGenerateRoute.generateRoute,      
      debugShowCheckedModeBanner: false,
      home: SplashPage(version: version),
    );
  }
}
