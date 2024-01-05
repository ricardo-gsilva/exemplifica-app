// import 'package:admob_flutter/admob_flutter.dart';

// class AdMob {
//   //ID de App p/Teste
//   final String idApp = "ca-app-pub-3940256099942544~3347511713";

// //Anúncio de teste
//   final String intersticial = "ca-app-pub-3940256099942544/1033173712";

//   final String interstitialVideo = "ca-app-pub-3940256099942544/8691691433";

//   final String banner = "ca-app-pub-3940256099942544/6300978111";

//   final String appOpen = "ca-app-pub-3940256099942544/3419835294";

//   final String rewarded = "ca-app-pub-3940256099942544/5224354917";

//   final String rewardedInterstitial = "ca-app-pub-3940256099942544/5354046379";

//   final String nativeAdvanced = "ca-app-pub-3940256099942544/2247696110";

//   final String nativeAdvancedVideo = "ca-app-pub-3940256099942544/1044960115";

//   AdmobInterstitial instShare;
//   int clicks = 0;

//   AdmobInterstitial pageCalc() {
//     return AdmobInterstitial(
//         adUnitId: intersticial,
//         listener: (AdmobAdEvent event, Map<String, dynamic> args) {
//           if (event == AdmobAdEvent.loaded) {
//             instShare?.show();
//           }
//           if (event == AdmobAdEvent.clicked || event == AdmobAdEvent.closed) {
//             instShare.dispose();
//             clicks = 0;
//           }
//         });
//   }

//   void showInstersticial() {
//     clicks++;
//     if (clicks > 5) {
//       instShare = pageCalc()
//         ..load()
//         ..show();
//       clicks = 0;
//     }
//   }

//   void showInstersticialHome() {
//     clicks++;
//     if (clicks == 2) {
//       instShare = pageCalc()
//         ..load()
//         ..show();
//       clicks = 0;
//     }
//   }

//   String bannerShow() {
//     return banner;
//   }

  
// }
