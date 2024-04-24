import 'package:exemplifica/main.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:get/get.dart';

//// ID do app AdMob TESTE
// ca-app-pub-3940256099942544~3347511713
//// Banner
// ca-app-pub-3940256099942544/6300978111
//// Intersticial
// ca-app-pub-3940256099942544/1033173712
//// Premiado
// ca-app-pub-3940256099942544/5224354917
class AdHelper extends GetxController{
  RxInt calc = 0.obs;
  RxInt calcEq1 = 0.obs;
  RxInt calcEq2 = 0.obs;
  RxInt calcFat = 0.obs;
  RxInt calcTab = 0.obs;
  RxInt calcJurosS = 0.obs;
  RxInt calcJurosC = 0.obs;
  RxInt calcMmc = 0.obs;
  RxInt calcMdc = 0.obs;
  RxInt calcPorcent = 0.obs;
  RxInt calcRegra3 = 0.obs;
  bool loading = false;

  InterstitialAd? interstitialAd;

  BannerAd? bannerAd;
  BannerAd? bannerAdHome;
  BannerAd? bannerAdCalc;
  BannerAd? bannerAdRegrasBasicas;
  BannerAd? bannerAdEquacao1;
  BannerAd? bannerAdEquacao2;
  BannerAd? bannerAdFatorial;
  BannerAd? bannerAdTabuada;
  BannerAd? bannerAdJurosC;
  BannerAd? bannerAdJurosS;
  BannerAd? bannerAdMmc;
  BannerAd? bannerAdMdc;
  BannerAd? bannerAdPorcentagem;
  BannerAd? bannerAdRegrade3;

  BannerAd? bannerAdParentesis;
  BannerAd? bannerAdExpoentes;
  BannerAd? bannerAdMultDiv;
  BannerAd? bannerAdSomaSub;
  BannerAd? bannerAdRegrasSinais;

  BannerAd? bannerAdCalcTabuada;
  BannerAd? bannerAdCalcEquacao1;
  BannerAd? bannerAdCalcEquacao2;
  BannerAd? bannerAdCalcFatorial;
  BannerAd? bannerAdCalcJurosS;
  BannerAd? bannerAdCalcJurosC;
  BannerAd? bannerAdCalcMdc;
  BannerAd? bannerAdCalcMmc;
  BannerAd? bannerAdCalcPorcentagem;
  BannerAd? bannerAdCalcRegrade3;

  static String get bannerTeste => 'ca-app-pub-3940256099942544/6300978111';

  static const String bannerHome = 'ca-app-pub-1375763577861005/6920567307';
  static const String bannerCalculadoras = 'ca-app-pub-1375763577861005/8752593536';
  static const String bannerRegrasBasicas = 'ca-app-pub-1375763577861005/6126430192';

  static const String bannerEquacao1 = 'ca-app-pub-1375763577861005/4367041028';
  static const String bannerEquacao2 = 'ca-app-pub-1375763577861005/1045020911';
  static const String bannerFatorial = 'ca-app-pub-1375763577861005/2802129174';
  static const String bannerTabuada = 'ca-app-pub-1375763577861005/3245531048';
  static const String bannerJurosCompostos = 'ca-app-pub-1375763577861005/1297475813';
  static const String bannerJurosSimples = 'ca-app-pub-1375763577861005/5045149139';
  static const String bannerMmc = 'ca-app-pub-1375763577861005/3540495771';
  static const String bannerMdc = 'ca-app-pub-1375763577861005/4550325112';
  static const String bannerPorcentagem = 'ca-app-pub-1375763577861005/5480263405';
  static const String bannerRegrade3 = 'ca-app-pub-1375763577861005/4662005759';

  static const String bannerParentesis = 'ca-app-pub-1375763577861005/5056891103';
  static const String bannerExpoentes = 'ca-app-pub-1375763577861005/6038800280';
  static const String bannerMultDiv = 'ca-app-pub-1375763577861005/2430727762';
  static const String bannerSomaSub = 'ca-app-pub-1375763577861005/7845301007';
  static const String bannerRegrasSinais = 'ca-app-pub-1375763577861005/4832124856';

  static const String bannerCalcTabuada = 'ca-app-pub-1375763577861005/5678270849';
  static const String bannerCalcEquacao1 = 'ca-app-pub-1375763577861005/5934858504';
  static const String bannerCalcEquacao2 = 'ca-app-pub-1375763577861005/4365189177';
  static const String bannerCalcFatorial = 'ca-app-pub-1375763577861005/3052107507';
  static const String bannerCalcJurosS = 'ca-app-pub-1375763577861005/4780153963';
  static const String bannerCalcJurosC = 'ca-app-pub-1375763577861005/2592974327';
  static const String bannerCalcMdc = 'ca-app-pub-1375763577861005/9892879840';
  static const String bannerCalcMmc = 'ca-app-pub-1375763577861005/4865319417';
  static const String bannerCalcPorcentagem = 'ca-app-pub-1375763577861005/1279892655';
  static const String bannerCalcRegrade3 = 'ca-app-pub-1375763577861005/1739025838';

  static const String videoCalc = 'ca-app-pub-1375763577861005/5678270849';
  static const String videoCalcTabuada = 'ca-app-pub-1375763577861005/5678270849';
  static const String videoCalcEquacao1 = 'ca-app-pub-1375763577861005/6091186235';
  static const String videoCalcEquacao2 = 'ca-app-pub-1375763577861005/4330269936';
  static const String videoCalcFatorial = 'ca-app-pub-1375763577861005/8077943251';
  static const String videoCalcJurosS = 'ca-app-pub-1375763577861005/9072572792';
  static const String videoCalcJurosC = 'ca-app-pub-1375763577861005/5324899474';
  static const String videoCalcMdc = 'ca-app-pub-1375763577861005/9548589984';
  static const String videoCalcMmc = 'ca-app-pub-1375763577861005/7113998334';
  static const String videoCalcPorcentagem = 'ca-app-pub-1375763577861005/4138698242';
  static const String videoCalcRegrade3 = 'ca-app-pub-1375763577861005/3669577343';

  void bannerAdMob (String adUnitId){
    BannerAd(
      adUnitId: adUnitId,
      request: const AdRequest(),
      size: AdSize.banner,
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          bannerAd = ad as BannerAd;
          print('teste2 $bannerAd');
        },
        onAdFailedToLoad: (ad, err) {
          print('Failed to load a banner ad: ${err.message}');
          ad.dispose();
        },
      ),
    ).load();   
  }

  void loadInterstitialAd(String videoAdId) {
    InterstitialAd.load(
      adUnitId: videoAdId,
      request: const AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (ad) {
          ad.fullScreenContentCallback = FullScreenContentCallback();
          interstitialAd = ad;
        },
        onAdFailedToLoad: (err) {
          print('Failed to load an interstitial ad: ${err.message}');
        },
      ),
    );
  }

  bool checkValueForInterstitial(String videoAdId, RxInt count){
    if (releaseMode) {
      loadInterstitialAd(videoAdId);
      if (count == 5.obs) {      
        loading = true;
        interstitialAd?.show();
      } else {
        loading = false;
      }
    } 
    return loading;  
  }  
  
  void loadingBannerHome(String admob) => bannerAdMob(admob);
  void loadingBannerCalculadoras(String admob) => bannerAdMob(admob);
  void loadingBannerRegrasBasicas(String admob) => bannerAdMob(admob);

  void loadingBannerParentesis(String admob) => bannerAdMob(admob);
  void loadingBannerExpoentes(String admob) => bannerAdMob(admob);
  void loadingBannerMultDiv(String admob) => bannerAdMob(admob);
  void loadingBannerSomaSub(String admob) => bannerAdMob(admob);
  void loadingBannerRegrasSinais(String admob) => bannerAdMob(admob);

  void loadingBannerTabuada(String admob) => bannerAdMob(admob);
  void loadingBannerEquacao1(String admob) => bannerAdMob(admob);
  void loadingBannerEquacao2(String admob) => bannerAdMob(admob);
  void loadingBannerFatorial(String admob) => bannerAdMob(admob);
  void loadingBannerJurosSimples(String admob) => bannerAdMob(admob);
  void loadingBannerJurosCompostos(String admob) => bannerAdMob(admob);
  void loadingBannerMdc(String admob) => bannerAdMob(admob);
  void loadingBannerMmc(String admob) => bannerAdMob(admob);
  void loadingBannerPorcentagem(String admob) => bannerAdMob(admob);
  void loadingBannerRegraDe3(String admob) => bannerAdMob(admob);
}
