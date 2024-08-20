import 'package:flutter/material.dart';

import 'package:exemplifica/view/templates/splash_screen_template.dart';

class SplashScreenPage extends StatelessWidget {
  final String? version;
  const SplashScreenPage({
    Key? key,
    this.version,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashScreenTemplate(version: version,),
    );
  }
}
