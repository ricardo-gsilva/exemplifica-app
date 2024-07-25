// ignore_for_file: must_be_immutable

import 'package:exemplifica/main.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class BottomBarBanner extends StatelessWidget {
  BannerAd? banner;
  BannerAd? bannerAd;
  BottomBarBanner({required this.banner, required this.bannerAd, super.key});

  @override
  Widget build(BuildContext context) {
    return releaseMode? Builder(builder: (context) {
      banner = bannerAd;
      return SafeArea(
        child: banner == null
            ? Container(color: Colors.black, height: MediaQuery.of(context).size.height * 0.1)
            : SizedBox(
                width: banner!.size.width.toDouble(),
                height: banner!.size.height.toDouble(),
                child: AdWidget(ad: banner!),
              ),
      );
    }) : SizedBox();
  }
}
