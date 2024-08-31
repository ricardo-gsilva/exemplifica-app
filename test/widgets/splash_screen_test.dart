import 'package:exemplifica/utils/constants/core_keys.dart';
import 'package:exemplifica/utils/constants/core_strings_assets.dart';
import 'package:exemplifica/view/page/splash_screen_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets(
    "Teste da splashScreen",
    (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: SplashScreenPage(),
      ));

      final splash = find.byKey(Key(CoreKeys.splashScreenTemplate));
      final widgetLogoExemplifica =
          find.byKey(Key(CoreKeys.logoExemplifica));
      final imageLogoExemplifica =
          find.image(AssetImage(CoreStringsAssets.logoExemplifica));
      final imageBackground =
          find.image(AssetImage(CoreStringsAssets.splashScreen_background));
      final widgetBackgroundSplash = find.byKey(Key(CoreKeys.bakcgroundSplashScreen));

      expect(imageBackground, findsOneWidget);
      expect(imageLogoExemplifica, findsOneWidget);
      expect(widgetBackgroundSplash, findsOneWidget);
      expect(widgetLogoExemplifica, findsOneWidget);
      expect(splash, findsOneWidget);

      await tester.pumpAndSettle(Duration(seconds: 5));
    },
  );
}
