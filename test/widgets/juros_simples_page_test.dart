import 'package:exemplifica/utils/constants/core_keys.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/utils/constants/core_strings_assets.dart';
import 'package:exemplifica/utils/constants/strings/strings_juros_simples.dart';
import 'package:exemplifica/utils/person_icons.dart';
import 'package:exemplifica/view/page/home_page.dart';
import 'package:exemplifica/view/page/juros_simples_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group(
    "Testes para a tela de Juros Simples",
    () {
      testWidgets(
        "Teste de widgets da tela de Juros Simples",
        (WidgetTester tester) async {
          await tester.pumpWidget(MaterialApp(
            home: JurosSimplesPage(),
          ));

          final contentList = find.byKey(Key(CoreKeys.contentList));
          final customImageAsset = find.byKey(Key(CoreKeys.customImageAsset));
          final customText = find.byKey(Key(CoreKeys.customText));
          final iconsReply = find.byIcon(Icons.reply);
          final iconsHome = find.byIcon(Person.calc);

          expect(iconsHome, findsOneWidget);
          expect(iconsReply, findsOneWidget);
          expect(contentList, findsOneWidget);
          expect(customImageAsset, findsNWidgets(5));
          expect(customText, findsNWidgets(10));
        },
      );

      testWidgets(
        "Teste de conteudo carregado na tela de Juros Simples",
        (WidgetTester tester) async {
          await tester.pumpWidget(MaterialApp(
            home: JurosSimplesPage(),
          ));              
                
              
          final textJurosSimples1 = find.text(CoreStringsJurosSimples.text1_JurosSimples);
          final textJurosSimples2 = find.text(CoreStringsJurosSimples.text2_JurosSimples);
          final textJurosSimples3 = find.text(CoreStringsJurosSimples.text3_JurosSimples);
          final textJurosSimples4 = find.text(CoreStringsJurosSimples.text4_JurosSimples);
          final textJurosSimples5 = find.text(CoreStringsJurosSimples.text5_JurosSimples);
          final textJurosSimples6 = find.text(CoreStringsJurosSimples.text6_JurosSimples);
          final textJurosSimples7 = find.text(CoreStringsJurosSimples.text7_JurosSimples);
          final textJurosSimples8 = find.text(CoreStringsJurosSimples.text8_JurosSimples);
          final textJurosSimples9 = find.text(CoreStringsJurosSimples.text9_JurosSimples);

          final textAssetImage2 =
              find.image(AssetImage(CoreStringsAssets.jurosSimples_assets_2));
          final textAssetImage3 =
              find.image(AssetImage(CoreStringsAssets.jurosSimples_assets_3));
          final textAssetImage4 =
              find.image(AssetImage(CoreStringsAssets.jurosSimples_assets_4));
          final textAssetImage5 =
              find.image(AssetImage(CoreStringsAssets.jurosSimples_assets_5));
          final textAssetImage6 =
              find.image(AssetImage(CoreStringsAssets.jurosSimples_assets_6));

          expect(textJurosSimples1, findsOneWidget);
          expect(textJurosSimples2, findsOneWidget);
          expect(textJurosSimples3, findsOneWidget);
          expect(textJurosSimples4, findsOneWidget);
          expect(textJurosSimples5, findsOneWidget);
          expect(textJurosSimples6, findsOneWidget);
          expect(textJurosSimples7, findsOneWidget);
          expect(textJurosSimples8, findsOneWidget);
          expect(textJurosSimples9, findsOneWidget);
          
          expect(textAssetImage2, findsOneWidget);
          expect(textAssetImage3, findsOneWidget);
          expect(textAssetImage4, findsOneWidget);
          expect(textAssetImage5, findsOneWidget);
          expect(textAssetImage6, findsOneWidget);
        },
      );

      testWidgets(
        "Testando os botōes da AppBar na tela de Juros Simples",
        (WidgetTester tester) async {
          await tester.pumpWidget(MaterialApp(
            home: HomePage(),
          ));

          await tester.tap(find.text(
            CoreStrings.titleJurosSimples,
          ));
          await tester.pumpAndSettle(Duration(seconds: 1));

          await tester.tap(find.byIcon(Icons.reply));
          await tester.pumpAndSettle(Duration(seconds: 1));
          final homePageTemplate =
              find.byKey(Key(CoreKeys.homePageButtonsGridTemplate));
          expect(homePageTemplate, findsOneWidget);

          await tester.tap(find.text(
            CoreStrings.titleJurosSimples,
          ));
          await tester.pumpAndSettle(Duration(seconds: 1));

          await tester.tap(find.byIcon(Person.calc));
          await tester.pumpAndSettle(Duration(seconds: 1));
          final calcJurosSimplesTemplate = find.byKey(Key(CoreKeys.calcJurosSimplesTemplate));
          expect(calcJurosSimplesTemplate, findsOneWidget);
        },
      );
    },
  );
}
