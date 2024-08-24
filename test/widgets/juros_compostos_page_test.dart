import 'package:exemplifica/utils/constants/core_keys.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/utils/constants/core_strings_assets.dart';
import 'package:exemplifica/utils/constants/strings/strings_juros_compostos.dart';
import 'package:exemplifica/utils/person_icons.dart';
import 'package:exemplifica/view/page/home_page.dart';
import 'package:exemplifica/view/page/juros_compostos_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group(
    "Testes para a tela de Juros Compostos",
    () {
      testWidgets(
        "Teste de widgets da tela de Juros Compostos",
        (WidgetTester tester) async {
          await tester.pumpWidget(MaterialApp(
            home: JurosCompostosPage(),
          ));

          final contentList = find.byKey(Key(CoreKeys.contentList));
          final customImageAsset = find.byKey(Key(CoreKeys.customImageAsset));
          final customText = find.byKey(Key(CoreKeys.customText));
          final iconsReply = find.byIcon(Icons.reply);
          final iconsHome = find.byIcon(Person.calc);

          expect(iconsHome, findsOneWidget);
          expect(iconsReply, findsOneWidget);
          expect(contentList, findsOneWidget);
          expect(customImageAsset, findsNWidgets(8));
          expect(customText, findsNWidgets(21));
        },
      );

      testWidgets(
        "Teste de conteudo carregado na tela de Juros Compostos",
        (WidgetTester tester) async {
          await tester.pumpWidget(MaterialApp(
            home: JurosCompostosPage(),
          ));              
              
          final textJurosCompostos1 = find.text(CoreStringsJurosCompostos.text1_JurosCompostos);
          final textJurosCompostos2 = find.text(CoreStringsJurosCompostos.text2_JurosCompostos);
          final textJurosCompostos3 = find.text(CoreStringsJurosCompostos.text3_JurosCompostos);
          final textJurosCompostos4 = find.text(CoreStringsJurosCompostos.text4_JurosCompostos);
          final textJurosCompostos5 = find.text(CoreStringsJurosCompostos.text5_JurosCompostos);
          final textJurosCompostos6 = find.text(CoreStringsJurosCompostos.text6_JurosCompostos);
          final textJurosCompostos8 = find.text(CoreStringsJurosCompostos.text8_JurosCompostos);
          final textJurosCompostos9 = find.text(CoreStringsJurosCompostos.text9_JurosCompostos);
          final textJurosCompostos10 = find.text(CoreStringsJurosCompostos.text10_JurosCompostos);
          final textJurosCompostos11 = find.text(CoreStringsJurosCompostos.text11_JurosCompostos);
          final textJurosCompostos12 = find.text(CoreStringsJurosCompostos.text12_JurosCompostos);
          final textJurosCompostos13 = find.text(CoreStringsJurosCompostos.text13_JurosCompostos);
          final textJurosCompostos14 = find.text(CoreStringsJurosCompostos.text14_JurosCompostos);
          final textJurosCompostos15 = find.text(CoreStringsJurosCompostos.text15_JurosCompostos);
          final textJurosCompostos16 = find.text(CoreStringsJurosCompostos.text16_JurosCompostos);
          final textJurosCompostos17 = find.text(CoreStringsJurosCompostos.text17_JurosCompostos);
          final textJurosCompostos18 = find.text(CoreStringsJurosCompostos.text18_JurosCompostos);
          final textJurosCompostos19 = find.text(CoreStringsJurosCompostos.text19_JurosCompostos);
          final textJurosCompostos20 = find.text(CoreStringsJurosCompostos.text20_JurosCompostos);
          final textJurosCompostos21 = find.text(CoreStringsJurosCompostos.text21_JurosCompostos);

          final textAssetImage2 =
              find.image(AssetImage(CoreStringsAssets.jurosCompostos_assets_2));
          final textAssetImage3 =
              find.image(AssetImage(CoreStringsAssets.jurosCompostos_assets_3));
          final textAssetImage4 =
              find.image(AssetImage(CoreStringsAssets.jurosCompostos_assets_4));
          final textAssetImage5 =
              find.image(AssetImage(CoreStringsAssets.jurosCompostos_assets_5));
          final textAssetImage6 =
              find.image(AssetImage(CoreStringsAssets.jurosCompostos_assets_6));
          final textAssetImage7 =
              find.image(AssetImage(CoreStringsAssets.jurosCompostos_assets_7));
          final textAssetImage8 =
              find.image(AssetImage(CoreStringsAssets.jurosCompostos_assets_8));
          final textAssetImage9 =
              find.image(AssetImage(CoreStringsAssets.jurosCompostos_assets_9));

          expect(textJurosCompostos1, findsOneWidget);
          expect(textJurosCompostos2, findsOneWidget);
          expect(textJurosCompostos3, findsOneWidget);
          expect(textJurosCompostos4, findsOneWidget);
          expect(textJurosCompostos5, findsOneWidget);
          expect(textJurosCompostos6, findsOneWidget);
          expect(textJurosCompostos8, findsOneWidget);
          expect(textJurosCompostos9, findsOneWidget);
          expect(textJurosCompostos10, findsOneWidget);
          expect(textJurosCompostos11, findsOneWidget);
          expect(textJurosCompostos12, findsOneWidget);
          expect(textJurosCompostos13, findsOneWidget);
          expect(textJurosCompostos14, findsOneWidget);
          expect(textJurosCompostos15, findsOneWidget);
          expect(textJurosCompostos16, findsOneWidget);
          expect(textJurosCompostos17, findsOneWidget);
          expect(textJurosCompostos18, findsOneWidget);
          expect(textJurosCompostos19, findsOneWidget);
          expect(textJurosCompostos20, findsOneWidget);
          expect(textJurosCompostos21, findsOneWidget);
          
          expect(textAssetImage2, findsOneWidget);
          expect(textAssetImage3, findsOneWidget);
          expect(textAssetImage4, findsOneWidget);
          expect(textAssetImage5, findsOneWidget);
          expect(textAssetImage6, findsOneWidget);
          expect(textAssetImage7, findsOneWidget);
          expect(textAssetImage8, findsOneWidget);
          expect(textAssetImage9, findsOneWidget);
        },
      );

      testWidgets(
        "Testando os botōes da AppBar na tela de Juros Compostos",
        (WidgetTester tester) async {
          await tester.pumpWidget(MaterialApp(
            home: HomePage(),
          ));

          await tester.tap(find.text(
            CoreStrings.titleJurosCompostos,
          ));
          await tester.pumpAndSettle(Duration(seconds: 1));

          await tester.tap(find.byIcon(Icons.reply));
          await tester.pumpAndSettle(Duration(seconds: 1));
          final homePageTemplate =
              find.byKey(Key(CoreKeys.homePageButtonsGridTemplate));
          expect(homePageTemplate, findsOneWidget);

          await tester.tap(find.text(
            CoreStrings.titleJurosCompostos,
          ));
          await tester.pumpAndSettle(Duration(seconds: 1));

          await tester.tap(find.byIcon(Person.calc));
          await tester.pumpAndSettle(Duration(seconds: 1));
          final calcJurosCompostosTemplate = find.byKey(Key(CoreKeys.calcJurosCompostosTemplate));
          expect(calcJurosCompostosTemplate, findsOneWidget);
        },
      );
    },
  );
}
