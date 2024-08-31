import 'package:exemplifica/utils/constants/core_keys.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/utils/constants/core_strings_assets.dart';
import 'package:exemplifica/utils/constants/strings/strings_fatorial.dart';
import 'package:exemplifica/utils/person_icons.dart';
import 'package:exemplifica/view/page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group(
    "Testes para a tela de Fatorial",
    () {
      testWidgets(
        "Teste de widgets da tela de Fatorial",
        (WidgetTester tester) async {
          await tester.pumpWidget(MaterialApp(
            home: HomePage(),
          ));

          await tester.tap(find.text(CoreStrings.titleFatorial));
          await tester.pumpAndSettle(Duration(seconds: 1));

          final contentList = find.byKey(Key(CoreKeys.contentList));
          final customImageAsset = find.byKey(Key(CoreKeys.customImageAsset));
          final customText = find.byKey(Key(CoreKeys.customText));
          final iconsReply = find.byIcon(Icons.reply);
          final iconsHome = find.byIcon(Person.calc);

          expect(iconsHome, findsOneWidget);
          expect(iconsReply, findsOneWidget);
          expect(contentList, findsOneWidget);
          expect(customImageAsset, findsNWidgets(15));
          expect(customText, findsNWidgets(21));
        },
      );

      testWidgets(
        "Teste de conteudo carregado na tela de Fatorial",
        (WidgetTester tester) async {
          await tester.pumpWidget(MaterialApp(
            home: HomePage(),
          ));

          await tester.tap(find.text(CoreStrings.titleFatorial));
          await tester.pumpAndSettle(Duration(seconds: 1));

          final textFatorial1 = find.text(CoreStringsFatorial.text1_Fatorial);
          final textFatorial2 = find.text(CoreStringsFatorial.text2_Fatorial);
          final textFatorial3 = find.text(CoreStringsFatorial.text3_Fatorial);
          final textFatorial4 = find.text(CoreStringsFatorial.text4_Fatorial);
          final textFatorial5 = find.text(CoreStringsFatorial.text5_Fatorial);
          final textFatorial6 = find.text(CoreStringsFatorial.text6_Fatorial);
          final textFatorial7 = find.text(CoreStringsFatorial.text7_Fatorial);
          final textFatorial8 = find.text(CoreStringsFatorial.text8_Fatorial);
          final textFatorial9 = find.text(CoreStringsFatorial.text9_Fatorial);
          final textFatorial11 = find.text(CoreStringsFatorial.text11_Fatorial);
          final textFatorial12 = find.text(CoreStringsFatorial.text12_Fatorial);
          final textFatorial13 = find.text(CoreStringsFatorial.text13_Fatorial);
          final textFatorial14 = find.text(CoreStringsFatorial.text14_Fatorial);
          final textFatorial15 = find.text(CoreStringsFatorial.text15_Fatorial);
          final textFatorial16 = find.text(CoreStringsFatorial.text16_Fatorial);
          final textFatorial17 = find.text(CoreStringsFatorial.text17_Fatorial);
          final textFatorial18 = find.text(CoreStringsFatorial.text18_Fatorial);
          final textFatorial19 = find.text(CoreStringsFatorial.text19_Fatorial);
          final textFatorial20 = find.text(CoreStringsFatorial.text20_Fatorial);

          final textAssetImage2 =
              find.image(AssetImage(CoreStringsAssets.fatorial_assets_2));
          final textAssetImage4 =
              find.image(AssetImage(CoreStringsAssets.fatorial_assets_4));
          final textAssetImage5 =
              find.image(AssetImage(CoreStringsAssets.fatorial_assets_5));
          final textAssetImage6 =
              find.image(AssetImage(CoreStringsAssets.fatorial_assets_6));
          final textAssetImage7 =
              find.image(AssetImage(CoreStringsAssets.fatorial_assets_7));
          final textAssetImage9 =
              find.image(AssetImage(CoreStringsAssets.fatorial_assets_9));
          final textAssetImage10 =
              find.image(AssetImage(CoreStringsAssets.fatorial_assets_10));
          final textAssetImage12 =
              find.image(AssetImage(CoreStringsAssets.fatorial_assets_12));
          final textAssetImage13 =
              find.image(AssetImage(CoreStringsAssets.fatorial_assets_13));
          final textAssetImage14 =
              find.image(AssetImage(CoreStringsAssets.fatorial_assets_14));
          final textAssetImage16 =
              find.image(AssetImage(CoreStringsAssets.fatorial_assets_16));
          final textAssetImage17 =
              find.image(AssetImage(CoreStringsAssets.fatorial_assets_17));
          final textAssetImage19 =
              find.image(AssetImage(CoreStringsAssets.fatorial_assets_19));
          final textAssetImage20 =
              find.image(AssetImage(CoreStringsAssets.fatorial_assets_20));
          final textAssetImage21 =
              find.image(AssetImage(CoreStringsAssets.fatorial_assets_21));

          expect(textFatorial1, findsOneWidget);
          expect(textFatorial2, findsOneWidget);
          expect(textFatorial3, findsOneWidget);
          expect(textFatorial4, findsOneWidget);
          expect(textFatorial5, findsOneWidget);
          expect(textFatorial6, findsOneWidget);
          expect(textFatorial7, findsOneWidget);
          expect(textFatorial8, findsOneWidget);
          expect(textFatorial9, findsOneWidget);
          expect(textFatorial11, findsOneWidget);
          expect(textFatorial12, findsOneWidget);
          expect(textFatorial13, findsNWidgets(2));
          expect(textFatorial14, findsOneWidget);
          expect(textFatorial15, findsOneWidget);
          expect(textFatorial16, findsOneWidget);
          expect(textFatorial17, findsOneWidget);
          expect(textFatorial18, findsOneWidget);
          expect(textFatorial19, findsOneWidget);
          expect(textFatorial20, findsOneWidget);

          expect(textAssetImage2, findsOneWidget);
          expect(textAssetImage4, findsOneWidget);
          expect(textAssetImage5, findsOneWidget);
          expect(textAssetImage6, findsOneWidget);
          expect(textAssetImage7, findsOneWidget);
          expect(textAssetImage9, findsOneWidget);
          expect(textAssetImage10, findsOneWidget);
          expect(textAssetImage12, findsOneWidget);
          expect(textAssetImage13, findsOneWidget);
          expect(textAssetImage14, findsOneWidget);
          expect(textAssetImage16, findsOneWidget);
          expect(textAssetImage17, findsOneWidget);
          expect(textAssetImage19, findsOneWidget);
          expect(textAssetImage20, findsOneWidget);
          expect(textAssetImage21, findsOneWidget);
        },
      );

      testWidgets(
        "Testando os botōes da AppBar na tela de Equação de 2 Grau",
        (WidgetTester tester) async {
          await tester.pumpWidget(MaterialApp(
            home: HomePage(),
          ));

          await tester.tap(find.text(
            CoreStrings.titleFatorial,
          ));
          await tester.pumpAndSettle(Duration(seconds: 1));

          await tester.tap(find.byIcon(Icons.reply));
          await tester.pumpAndSettle(Duration(seconds: 1));
          final homePageTemplate =
              find.byKey(Key(CoreKeys.homePageButtonsGridTemplate));
          expect(homePageTemplate, findsOneWidget);

          await tester.tap(find.text(
            CoreStrings.titleFatorial,
          ));
          await tester.pumpAndSettle(Duration(seconds: 1));

          await tester.tap(find.byIcon(Person.calc));
          await tester.pumpAndSettle(Duration(seconds: 1));
          final calcFatorialTemplate =
              find.byKey(Key(CoreKeys.calculatorTemplate));
          expect(calcFatorialTemplate, findsOneWidget);
        },
      );
    },
  );
}
