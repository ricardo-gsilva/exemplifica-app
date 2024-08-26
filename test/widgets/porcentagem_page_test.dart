import 'package:exemplifica/utils/constants/core_keys.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/utils/constants/core_strings_assets.dart';
import 'package:exemplifica/utils/constants/strings/strings_porcentagem.dart';
import 'package:exemplifica/utils/person_icons.dart';
import 'package:exemplifica/view/page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group(
    "Testes para a tela de Porcentagem",
    () {
      testWidgets(
        "Teste de widgets da tela de Porcentagem",
        (WidgetTester tester) async {
          // await tester.pumpWidget(MaterialApp(
          //   home: PorcentagemPage(),
          // ));

          final contentList = find.byKey(Key(CoreKeys.contentList));
          final customImageAsset = find.byKey(Key(CoreKeys.customImageAsset));
          final customText = find.byKey(Key(CoreKeys.customText));
          final iconsReply = find.byIcon(Icons.reply);
          final iconsHome = find.byIcon(Person.calc);

          expect(iconsHome, findsOneWidget);
          expect(iconsReply, findsOneWidget);
          expect(contentList, findsOneWidget);
          expect(customImageAsset, findsNWidgets(8));
          expect(customText, findsNWidgets(13));
        },
      );

      testWidgets(
        "Teste de conteudo carregado na tela de Porcentagem",
        (WidgetTester tester) async {
          // await tester.pumpWidget(MaterialApp(
          //   home: PorcentagemPage(),
          // ));                
              
          final textPorcentagem1 = find.text(CoreStringsPorcentagem.text1_porcentagem);
          final textPorcentagem2 = find.text(CoreStringsPorcentagem.text2_porcentagem);
          final textPorcentagem3 = find.text(CoreStringsPorcentagem.text3_porcentagem);
          final textPorcentagem4 = find.text(CoreStringsPorcentagem.text4_porcentagem);
          final textPorcentagem5 = find.text(CoreStringsPorcentagem.text5_porcentagem);
          final textPorcentagem6 = find.text(CoreStringsPorcentagem.text6_porcentagem);
          final textPorcentagem7 = find.text(CoreStringsPorcentagem.text7_porcentagem);
          final textPorcentagem8 = find.text(CoreStringsPorcentagem.text8_porcentagem);
          final textPorcentagem9 = find.text(CoreStringsPorcentagem.text9_porcentagem);
          final textPorcentagem10 = find.text(CoreStringsPorcentagem.text10_porcentagem);
          final textPorcentagem11 = find.text(CoreStringsPorcentagem.text11_porcentagem);
          final textPorcentagem12 = find.text(CoreStringsPorcentagem.text12_porcentagem);

          final textAssetImage2 =
              find.image(AssetImage(CoreStringsAssets.porcentagem_assets_2));
          final textAssetImage3 =
              find.image(AssetImage(CoreStringsAssets.porcentagem_assets_3));
          final textAssetImage4 =
              find.image(AssetImage(CoreStringsAssets.porcentagem_assets_4));
          final textAssetImage5 =
              find.image(AssetImage(CoreStringsAssets.porcentagem_assets_5));
          final textAssetImage6 =
              find.image(AssetImage(CoreStringsAssets.porcentagem_assets_6));
          final textAssetImage7 =
              find.image(AssetImage(CoreStringsAssets.porcentagem_assets_7));
          final textAssetImage8 =
              find.image(AssetImage(CoreStringsAssets.porcentagem_assets_8));
          final textAssetImage9 =
              find.image(AssetImage(CoreStringsAssets.porcentagem_assets_9));

          expect(textPorcentagem1, findsOneWidget);
          expect(textPorcentagem2, findsOneWidget);
          expect(textPorcentagem3, findsOneWidget);
          expect(textPorcentagem4, findsOneWidget);
          expect(textPorcentagem5, findsOneWidget);
          expect(textPorcentagem6, findsOneWidget);
          expect(textPorcentagem7, findsOneWidget);
          expect(textPorcentagem8, findsOneWidget);
          expect(textPorcentagem9, findsOneWidget);
          expect(textPorcentagem10, findsOneWidget);
          expect(textPorcentagem11, findsOneWidget);
          expect(textPorcentagem12, findsOneWidget);
          
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
        "Testando os botōes da AppBar na tela de Porcentagem",
        (WidgetTester tester) async {
          await tester.pumpWidget(MaterialApp(
            home: HomePage(),
          ));

          await tester.tap(find.text(
            CoreStrings.titlePorcentagem,
          ));
          await tester.pumpAndSettle(Duration(seconds: 1));

          await tester.tap(find.byIcon(Icons.reply));
          await tester.pumpAndSettle(Duration(seconds: 1));
          final homePageTemplate =
              find.byKey(Key(CoreKeys.homePageButtonsGridTemplate));
          expect(homePageTemplate, findsOneWidget);

          await tester.tap(find.text(
            CoreStrings.titlePorcentagem,
          ));
          await tester.pumpAndSettle(Duration(seconds: 1));

          await tester.tap(find.byIcon(Person.calc));
          await tester.pumpAndSettle(Duration(seconds: 1));
          final calcPorcentagemTemplate =
              find.byKey(Key(CoreKeys.calcPorcentagemTemplate));
          expect(calcPorcentagemTemplate, findsOneWidget);
        },
      );
    },
  );
}
