import 'package:exemplifica/utils/constants/core_keys.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/utils/constants/core_strings_assets.dart';
import 'package:exemplifica/utils/constants/strings/strings_tabuada.dart';
import 'package:exemplifica/utils/person_icons.dart';
import 'package:exemplifica/view/page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group(
    "Testes para a tela de Tabuada",
    () {
      testWidgets(
        "Teste de widgets da tela de Tabuada",
        (WidgetTester tester) async {
          await tester.pumpWidget(MaterialApp(
            home: HomePage(),
          ));

          await tester.tap(find.text(CoreStrings.titleTabuada));
          await tester.pumpAndSettle(Duration(seconds: 1));

          final contentList = find.byKey(Key(CoreKeys.contentList));
          final customImageAsset = find.byKey(Key(CoreKeys.customImageAsset));
          final customText = find.byKey(Key(CoreKeys.customText));
          final iconsReply = find.byIcon(Icons.reply);
          final iconsHome = find.byIcon(Person.calc);

          expect(iconsHome, findsOneWidget);
          expect(iconsReply, findsOneWidget);
          expect(contentList, findsOneWidget);
          expect(customImageAsset, findsNWidgets(3));
          expect(customText, findsNWidgets(7));
        },
      );

      testWidgets(
        "Teste de conteudo carregado na tela de Tabuada",
        (WidgetTester tester) async {
          await tester.pumpWidget(MaterialApp(
            home: HomePage(),
          ));

          await tester.tap(find.text(CoreStrings.titleTabuada));
          await tester.pumpAndSettle(Duration(seconds: 1));

          final textTabuada1 = find.text(CoreStringsTabuada.text1_tabuada);
          final textTabuada2 = find.text(CoreStringsTabuada.text2_tabuada);
          final textTabuada3 = find.text(CoreStringsTabuada.text3_tabuada);
          final textTabuada4 = find.text(CoreStringsTabuada.text4_tabuada);
          final textTabuada5 = find.text(CoreStringsTabuada.text5_tabuada);
          final textTabuada6 = find.text(CoreStringsTabuada.text6_tabuada);

          final textAssetImage2 =
              find.image(AssetImage(CoreStringsAssets.tabuada_assets_2));
          final textAssetImage3 =
              find.image(AssetImage(CoreStringsAssets.tabuada_assets_3));
          final textAssetImage5 =
              find.image(AssetImage(CoreStringsAssets.tabuada_assets_4));;

          expect(textTabuada1, findsOneWidget);
          expect(textTabuada2, findsOneWidget);
          expect(textTabuada3, findsOneWidget);
          expect(textTabuada4, findsOneWidget);
          expect(textTabuada5, findsOneWidget);
          expect(textTabuada6, findsOneWidget);

          expect(textAssetImage2, findsOneWidget);
          expect(textAssetImage3, findsOneWidget);
          expect(textAssetImage5, findsOneWidget);
        },
      );

      testWidgets(
        "Testando os botōes da AppBar na tela de Tabuada",
        (WidgetTester tester) async {
          await tester.pumpWidget(MaterialApp(
            home: HomePage(),
          ));

          await tester.tap(find.text(CoreStrings.titleTabuada));
          await tester.pumpAndSettle(Duration(seconds: 1));

          await tester.tap(find.byIcon(Icons.reply));
          await tester.pumpAndSettle(Duration(seconds: 1));
          final homePageTemplate =
              find.byKey(Key(CoreKeys.homePageButtonsGridTemplate));
          expect(homePageTemplate, findsOneWidget);

          await tester.tap(find.text(
            CoreStrings.titleTabuada,
          ));
          await tester.pumpAndSettle(Duration(seconds: 1));

          await tester.tap(find.byIcon(Person.calc));
          await tester.pumpAndSettle(Duration(seconds: 1));
          final calcTabuadaTemplate =
              find.byKey(Key(CoreKeys.calculatorTemplate));
          expect(calcTabuadaTemplate, findsOneWidget);
        },
      );
    },
  );
}
