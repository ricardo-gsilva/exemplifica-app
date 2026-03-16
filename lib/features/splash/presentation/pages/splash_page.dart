import 'package:exemplifica/core/constants/core_fontSize.dart';
import 'package:exemplifica/core/constants/core_strings.dart';
import 'package:exemplifica/core/constants/core_assets_strings.dart';
import 'package:exemplifica/core/extensions/context_extensions.dart';
import 'package:exemplifica/core/navigation/app_routes.dart';
import 'package:exemplifica/core/ui/widgets/text_custom.dart';
import 'package:exemplifica/features/splash/presentation/widgets/image_asset_custom.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  final String? version;
  const SplashPage({
    Key? key,
    this.version,
  }) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    print(widget.version);
    navigateForHome();
  }

  void navigateForHome() {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushNamedAndRemoveUntil(context, AppRoutes.home, (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: width,
            height: height,
            child: Image(
                image: AssetImage(
                  CoreAssetsStrings.splashScreenBackground,
                ),
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
                  child: ImageAssetCustom(asset: CoreAssetsStrings.appLogo),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.0,
              right: 8.0,
              top: 8.0,
              bottom: context.bottomSystemSpace + 8.0,
            ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: TextCustom(
                text: '${CoreStrings.version} ${widget.version ?? ''}',
                fontSize: CoreFontSize.h_22,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
