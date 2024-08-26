import 'package:exemplifica/utils/constants/core_keys.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/utils/constants/core_strings_assets.dart';
import 'package:exemplifica/utils/constants/strings/strings_mdc.dart';
import 'package:exemplifica/utils/person_icons.dart';
import 'package:exemplifica/view/page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group(
    "Testes para a tela de Mdc",
    () {
      testWidgets(
        "Teste de widgets da tela de Mdc",
        (WidgetTester tester) async {
          // await tester.pumpWidget(MaterialApp(
          //   home: MdcPage(),
          // ));

          final contentList = find.byKey(Key(CoreKeys.contentList));
          final customImageAsset = find.byKey(Key(CoreKeys.customImageAsset));
          final customText = find.byKey(Key(CoreKeys.customText));
          final iconsReply = find.byIcon(Icons.reply);
          final iconsHome = find.byIcon(Person.calc);

          expect(iconsHome, findsOneWidget);
          expect(iconsReply, findsOneWidget);
          expect(contentList, findsOneWidget);
          expect(customImageAsset, findsNWidgets(2));
          expect(customText, findsNWidgets(6));
        },
      );

      testWidgets(
        "Teste de conteudo carregado na tela de Mdc",
        (WidgetTester tester) async {
          // await tester.pumpWidget(MaterialApp(
          //   home: MdcPage(),
          // ));
              
          final textMdc1 = find.text(CoreStringsMdc.text1_mdc);
          final textMdc2 = find.text(CoreStringsMdc.text2_mdc);
          final textMdc3 = find.text(CoreStringsMdc.text3_mdc);
          final textMdc4 = find.text(CoreStringsMdc.text4_mdc);
          final textMdc5 = find.text(CoreStringsMdc.text5_mdc);

          final textAssetImage2 =
              find.image(AssetImage(CoreStringsAssets.mdc_assets_2));
          final textAssetImage3 =
              find.image(AssetImage(CoreStringsAssets.mdc_assets_3));

          expect(textMdc1, findsOneWidget);
          expect(textMdc2, findsOneWidget);
          expect(textMdc3, findsOneWidget);
          expect(textMdc4, findsOneWidget);
          expect(textMdc5, findsOneWidget);
          
          expect(textAssetImage2, findsOneWidget);
          expect(textAssetImage3, findsOneWidget);
        },
      );

      testWidgets(
        "Testando os botōes da AppBar na tela de Mdc",
        (WidgetTester tester) async {
          await tester.pumpWidget(MaterialApp(
            home: HomePage(),
          ));

          await tester.tap(find.text(
            CoreStrings.titleMdc,
          ));
          await tester.pumpAndSettle(Duration(seconds: 1));

          await tester.tap(find.byIcon(Icons.reply));
          await tester.pumpAndSettle(Duration(seconds: 1));
          final homePageTemplate =
              find.byKey(Key(CoreKeys.homePageButtonsGridTemplate));
          expect(homePageTemplate, findsOneWidget);

          await tester.tap(find.text(
            CoreStrings.titleMdc,
          ));
          await tester.pumpAndSettle(Duration(seconds: 1));

          await tester.tap(find.byIcon(Person.calc));
          await tester.pumpAndSettle(Duration(seconds: 1));
          final calcMdcTemplate = find.byKey(Key(CoreKeys.calcMdcTemplate));
          expect(calcMdcTemplate, findsOneWidget);
        },
      );
    },
  );
}
