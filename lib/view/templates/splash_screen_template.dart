import 'package:exemplifica/view/atoms/custom_image_asset.dart';
import 'package:exemplifica/view/atoms/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:exemplifica/utils/constants/core_fontSize.dart';
import 'package:exemplifica/utils/constants/core_strings_assets.dart';
import 'package:exemplifica/view/page/home_page.dart';

class SplashScreenTemplate extends StatefulWidget {
  final String? version;
  const SplashScreenTemplate({
    Key? key,
    this.version,
  }) : super(key: key);

  @override
  State<SplashScreenTemplate> createState() => _SplashScreenTemplateState();
}

class _SplashScreenTemplateState extends State<SplashScreenTemplate> {
  @override
  void initState() {
    super.initState();
    splashScreen();
  }

  void splashScreen() {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Container(
          width: width,
          height: height,
          child: Image(image: AssetImage(CoreStringsAssets.splashScreen_background),
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
                child: CustomImageAsset(asset: CoreStringsAssets.logoExemplifica),
              )
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            child: CustomText(
              title: 'Versão: ${widget.version ?? ''}',
              fontSize: CoreFontSize.h_22,
            ),
          ),
        )
      ],
    );
  }
}
