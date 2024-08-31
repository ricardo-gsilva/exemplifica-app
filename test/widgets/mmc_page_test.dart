import 'package:exemplifica/utils/constants/core_keys.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/utils/constants/core_strings_assets.dart';
import 'package:exemplifica/utils/constants/strings/strings_mmc.dart';
import 'package:exemplifica/utils/person_icons.dart';
import 'package:exemplifica/view/page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group(
    "Testes para a tela de MMC",
    () {
      testWidgets(
        "Teste de widgets da tela de MMC",
        (WidgetTester tester) async {
          await tester.pumpWidget(MaterialApp(
            home: HomePage(),
          ));

          await tester.tap(find.text(CoreStrings.titleMmc));
          await tester.pumpAndSettle(Duration(seconds: 1));

          final contentList = find.byKey(Key(CoreKeys.contentList));
          final customImageAsset = find.byKey(Key(CoreKeys.customImageAsset));
          final customText = find.byKey(Key(CoreKeys.customText));
          final iconsReply = find.byIcon(Icons.reply);
          final iconsHome = find.byIcon(Person.calc);

          expect(iconsHome, findsOneWidget);
          expect(iconsReply, findsOneWidget);
          expect(contentList, findsOneWidget);
          expect(customImageAsset, findsNWidgets(4));
          expect(customText, findsNWidgets(8));
        },
      );

      testWidgets(
        "Teste de conteudo carregado na tela de MMC",
        (WidgetTester tester) async {
          await tester.pumpWidget(MaterialApp(
            home: HomePage(),
          ));

          await tester.tap(find.text(CoreStrings.titleMmc));
          await tester.pumpAndSettle(Duration(seconds: 1));
              
          final textMmc1 = find.text(CoreStringsMmc.text1_mmc);
          final textMmc2 = find.text(CoreStringsMmc.text2_mmc);
          final textMmc3 = find.text(CoreStringsMmc.text3_mmc);
          final textMmc4 = find.text(CoreStringsMmc.text4_mmc);
          final textMmc5 = find.text(CoreStringsMmc.text5_mmc);
          final textMmc6 = find.text(CoreStringsMmc.text6_mmc);
          final textMmc7 = find.text(CoreStringsMmc.text7_mmc);

          final textAssetImage2 =
              find.image(AssetImage(CoreStringsAssets.mmc_assets_2));
          final textAssetImage3 =
              find.image(AssetImage(CoreStringsAssets.mmc_assets_3));
          final textAssetImage4 =
              find.image(AssetImage(CoreStringsAssets.mmc_assets_4));
          final textAssetImage5 =
              find.image(AssetImage(CoreStringsAssets.mmc_assets_5));

          expect(textMmc1, findsOneWidget);
          expect(textMmc2, findsOneWidget);
          expect(textMmc3, findsOneWidget);
          expect(textMmc4, findsOneWidget);
          expect(textMmc5, findsOneWidget);
          expect(textMmc6, findsOneWidget);
          expect(textMmc7, findsOneWidget);
          
          expect(textAssetImage2, findsOneWidget);
          expect(textAssetImage3, findsOneWidget);
          expect(textAssetImage4, findsOneWidget);
          expect(textAssetImage5, findsOneWidget);
        },
      );

      testWidgets(
        "Testando os botōes da AppBar na tela de MMC",
        (WidgetTester tester) async {
          await tester.pumpWidget(MaterialApp(
            home: HomePage(),
          ));

          await tester.tap(find.text(CoreStrings.titleMmc));
          await tester.pumpAndSettle(Duration(seconds: 1));

          await tester.tap(find.byIcon(Icons.reply));
          await tester.pumpAndSettle(Duration(seconds: 1));
          final homePageTemplate =
              find.byKey(Key(CoreKeys.homePageButtonsGridTemplate));
          expect(homePageTemplate, findsOneWidget);

          await tester.tap(find.text(
            CoreStrings.titleMmc,
          ));
          await tester.pumpAndSettle(Duration(seconds: 1));

          await tester.tap(find.byIcon(Person.calc));
          await tester.pumpAndSettle(Duration(seconds: 1));
          final calcMmcTemplate = find.byKey(Key(CoreKeys.calculatorTemplate));
          expect(calcMmcTemplate, findsOneWidget);
        },
      );
    },
  );
}
