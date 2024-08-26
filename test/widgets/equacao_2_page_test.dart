import 'package:exemplifica/utils/constants/core_keys.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/utils/constants/core_strings_assets.dart';
import 'package:exemplifica/utils/constants/strings/strings_equacao_2.dart';
import 'package:exemplifica/utils/person_icons.dart';
import 'package:exemplifica/view/page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group(
    "Testes para a tela de Equação de 2 Grau",
    () {
      testWidgets(
        "Teste de widgets da tela de Equação de 2 Grau",
        (WidgetTester tester) async {
          await tester.pumpWidget(MaterialApp(
            home: HomePage(),
          ));

          await tester.tap(find.text(CoreStrings.titleEquacao2));
          await tester.pumpAndSettle(Duration(seconds: 1));

          final text = find.text(CoreStrings.titleEquacao2);
          expect(text, findsOneWidget);

          final contentList = find.byKey(Key(CoreKeys.contentList));
          final customImageAsset = find.byKey(Key(CoreKeys.customImageAsset));
          final customText = find.byKey(Key(CoreKeys.customText));
          final iconsReply = find.byIcon(Icons.reply);
          final iconsHome = find.byIcon(Person.calc);

          expect(iconsHome, findsOneWidget);
          expect(iconsReply, findsOneWidget);
          expect(contentList, findsOneWidget);
          expect(customImageAsset, findsNWidgets(13));
          expect(customText, findsNWidgets(18));
        },
      );

      testWidgets(
        "Teste de conteudo carregado na tela de Equação de 2 Grau",
        (WidgetTester tester) async {
          await tester.pumpWidget(MaterialApp(
            home: HomePage(),
          ));

          await tester.tap(find.text(CoreStrings.titleEquacao2));
          await tester.pumpAndSettle(Duration(seconds: 1));

          final textEquacao2_1 = find.text(CoreStringsEquacao2.text1_Equacao2);
          final textEquacao2_2 = find.text(CoreStringsEquacao2.text2_Equacao2);
          final textEquacao2_3 = find.text(CoreStringsEquacao2.text3_Equacao2);
          final textEquacao2_4 = find.text(CoreStringsEquacao2.text4_Equacao2);
          final textEquacao2_5 = find.text(CoreStringsEquacao2.text5_Equacao2);
          final textEquacao2_6 = find.text(CoreStringsEquacao2.text6_Equacao2);
          final textEquacao2_7 = find.text(CoreStringsEquacao2.text7_Equacao2);
          final textEquacao2_8 = find.text(CoreStringsEquacao2.text1_Equacao2);
          final textEquacao2_9 = find.text(CoreStringsEquacao2.text2_Equacao2);
          final textEquacao2_10 = find.text(CoreStringsEquacao2.text3_Equacao2);
          final textEquacao2_11 = find.text(CoreStringsEquacao2.text4_Equacao2);
          final textEquacao2_12 = find.text(CoreStringsEquacao2.text5_Equacao2);
          final textEquacao2_13 = find.text(CoreStringsEquacao2.text6_Equacao2);
          final textEquacao2_14 = find.text(CoreStringsEquacao2.text7_Equacao2);
          final textEquacao2_15 = find.text(CoreStringsEquacao2.text1_Equacao2);
          final textEquacao2_16 = find.text(CoreStringsEquacao2.text2_Equacao2);
          final textEquacao2_17 = find.text(CoreStringsEquacao2.text3_Equacao2);

          final textAssetImage2 =
              find.image(AssetImage(CoreStringsAssets.equacao_2_assets_2));
          final textAssetImage3 =
              find.image(AssetImage(CoreStringsAssets.equacao_2_assets_3));
          final textAssetImage4 =
              find.image(AssetImage(CoreStringsAssets.equacao_2_assets_4));
          final textAssetImage5 =
              find.image(AssetImage(CoreStringsAssets.equacao_2_assets_5));
          final textAssetImage6 =
              find.image(AssetImage(CoreStringsAssets.equacao_2_assets_6));
          final textAssetImage7 =
              find.image(AssetImage(CoreStringsAssets.equacao_2_assets_7));
          final textAssetImage8 =
              find.image(AssetImage(CoreStringsAssets.equacao_2_assets_8));
          final textAssetImage12 =
              find.image(AssetImage(CoreStringsAssets.equacao_2_assets_12));
          final textAssetImage13 =
              find.image(AssetImage(CoreStringsAssets.equacao_2_assets_13));
          final textAssetImage14 =
              find.image(AssetImage(CoreStringsAssets.equacao_2_assets_14));
          final textAssetImage15 =
              find.image(AssetImage(CoreStringsAssets.equacao_2_assets_15));
          final textAssetImage16 =
              find.image(AssetImage(CoreStringsAssets.equacao_2_assets_16));
          final textAssetImage17 =
              find.image(AssetImage(CoreStringsAssets.equacao_2_assets_17));

          expect(textEquacao2_1, findsOneWidget);
          expect(textEquacao2_2, findsOneWidget);
          expect(textEquacao2_3, findsOneWidget);
          expect(textEquacao2_4, findsOneWidget);
          expect(textEquacao2_5, findsOneWidget);
          expect(textEquacao2_6, findsOneWidget);
          expect(textEquacao2_7, findsOneWidget);
          expect(textEquacao2_8, findsOneWidget);
          expect(textEquacao2_9, findsOneWidget);
          expect(textEquacao2_10, findsOneWidget);
          expect(textEquacao2_11, findsOneWidget);
          expect(textEquacao2_12, findsOneWidget);
          expect(textEquacao2_13, findsOneWidget);
          expect(textEquacao2_14, findsOneWidget);
          expect(textEquacao2_15, findsOneWidget);
          expect(textEquacao2_16, findsOneWidget);
          expect(textEquacao2_17, findsOneWidget);

          expect(textAssetImage2, findsOneWidget);
          expect(textAssetImage3, findsOneWidget);
          expect(textAssetImage4, findsOneWidget);
          expect(textAssetImage5, findsOneWidget);
          expect(textAssetImage6, findsOneWidget);
          expect(textAssetImage7, findsOneWidget);
          expect(textAssetImage8, findsOneWidget);
          expect(textAssetImage12, findsOneWidget);
          expect(textAssetImage13, findsOneWidget);
          expect(textAssetImage14, findsOneWidget);
          expect(textAssetImage15, findsOneWidget);
          expect(textAssetImage16, findsOneWidget);
          expect(textAssetImage17, findsOneWidget);
        },
      );

      testWidgets(
        "Testando os botōes da AppBar na tela de Equação de 2 Grau",
        (WidgetTester tester) async {
          await tester.pumpWidget(MaterialApp(
            home: HomePage(),
          ));

          await tester.tap(find.text(
            CoreStrings.titleEquacao2,
          ));
          await tester.pumpAndSettle(Duration(seconds: 1));

          await tester.tap(find.byIcon(Icons.reply));
          await tester.pumpAndSettle(Duration(seconds: 1));
          final homePageTemplate =
              find.byKey(Key(CoreKeys.homePageButtonsGridTemplate));
          expect(homePageTemplate, findsOneWidget);

          await tester.tap(find.text(
            CoreStrings.titleEquacao2,
          ));
          await tester.pumpAndSettle(Duration(seconds: 1));

          await tester.tap(find.byIcon(Person.calc));
          await tester.pumpAndSettle(Duration(seconds: 1));
          final calcEquacao2Template =
              find.byKey(Key(CoreKeys.calcEquacao2Template));
          expect(calcEquacao2Template, findsOneWidget);
        },
      );
    },
  );
}
