import 'package:admob_flutter/admob_flutter.dart';
import 'package:exemplifica_git/ad_mob/ad_mob.dart';
import 'package:flutter/material.dart';

class BannerAdMob extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final AdMob adMob = AdMob();
    final size = MediaQuery.of(context).size;
    return Container(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: AdmobBanner(
          adUnitId: adMob.bannerShow(),
          adSize: AdmobBannerSize.ADAPTIVE_BANNER(
            width: size.width.toInt(),
          ),
          listener: (AdmobAdEvent event, Map<String, dynamic> args) {
            // handleEvent(event, args, 'Banner');
          },
        ),
      ),
      color: Colors.transparent,
    );
  }
}
