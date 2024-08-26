import 'package:exemplifica/utils/constants/core_keys.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/utils/constants/core_strings_assets.dart';
import 'package:exemplifica/utils/constants/strings/strings_regra_de_3.dart';
import 'package:exemplifica/utils/person_icons.dart';
import 'package:exemplifica/view/page/home_page.dart';
import 'package:exemplifica/view/page/regra_de_3_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group(
    "Testes para a tela de Regra de 3",
    () {
      testWidgets(
        "Teste de widgets da tela de Regra de 3",
        (WidgetTester tester) async {
          // await tester.pumpWidget(MaterialApp(
          //   home: RegraDe3Page(),
          // ));

          final contentList = find.byKey(Key(CoreKeys.contentList));
          final customImageAsset = find.byKey(Key(CoreKeys.customImageAsset));
          final customText = find.byKey(Key(CoreKeys.customText));
          final iconsReply = find.byIcon(Icons.reply);
          final iconsHome = find.byIcon(Person.calc);

          expect(iconsHome, findsOneWidget);
          expect(iconsReply, findsOneWidget);
          expect(contentList, findsOneWidget);
          expect(customImageAsset, findsNWidgets(10));
          expect(customText, findsNWidgets(17));
        },
      );

      testWidgets(
        "Teste de conteudo carregado na tela de Regra de 3",
        (WidgetTester tester) async {
          // await tester.pumpWidget(MaterialApp(
          //   home: RegraDe3Page(),
          // ));

          final textRegraDe3_1 = find.text(CoreStringsRegraDe3.text1_regraDe3);
          final textRegraDe3_2 = find.text(CoreStringsRegraDe3.text2_regraDe3);
          final textRegraDe3_3 = find.text(CoreStringsRegraDe3.text3_regraDe3);
          final textRegraDe3_4 = find.text(CoreStringsRegraDe3.text4_regraDe3);
          final textRegraDe3_5 = find.text(CoreStringsRegraDe3.text5_regraDe3);
          final textRegraDe3_6 = find.text(CoreStringsRegraDe3.text6_regraDe3);
          final textRegraDe3_7 = find.text(CoreStringsRegraDe3.text7_regraDe3);
          final textRegraDe3_8 = find.text(CoreStringsRegraDe3.text8_regraDe3);
          final textRegraDe3_9 = find.text(CoreStringsRegraDe3.text9_regraDe3);
          final textRegraDe3_10 = find.text(CoreStringsRegraDe3.text10_regraDe3);
          final textRegraDe3_11 = find.text(CoreStringsRegraDe3.text11_regraDe3);
          final textRegraDe3_12 = find.text(CoreStringsRegraDe3.text12_regraDe3);
          final textRegraDe3_13 = find.text(CoreStringsRegraDe3.text13_regraDe3);
          final textRegraDe3_14 = find.text(CoreStringsRegraDe3.text14_regraDe3);
          final textRegraDe3_15 = find.text(CoreStringsRegraDe3.text15_regraDe3);
          final textRegraDe3_16 = find.text(CoreStringsRegraDe3.text16_regraDe3);

          final textAssetImage3 =
              find.image(AssetImage(CoreStringsAssets.regra_de3_assets_3));
          final textAssetImage4 =
              find.image(AssetImage(CoreStringsAssets.regra_de3_assets_4));
          final textAssetImage5 =
              find.image(AssetImage(CoreStringsAssets.regra_de3_assets_5));
          final textAssetImage6 =
              find.image(AssetImage(CoreStringsAssets.regra_de3_assets_6));
          final textAssetImage8 =
              find.image(AssetImage(CoreStringsAssets.regra_de3_assets_8));
          final textAssetImage9 =
              find.image(AssetImage(CoreStringsAssets.regra_de3_assets_9));
          final textAssetImage10 =
              find.image(AssetImage(CoreStringsAssets.regra_de3_assets_10));
          final textAssetImage11 =
              find.image(AssetImage(CoreStringsAssets.regra_de3_assets_11));
          final textAssetImage12 =
              find.image(AssetImage(CoreStringsAssets.regra_de3_assets_12));
          final textAssetImage13 =
              find.image(AssetImage(CoreStringsAssets.regra_de3_assets_13));

          expect(textRegraDe3_1, findsOneWidget);
          expect(textRegraDe3_2, findsOneWidget);
          expect(textRegraDe3_3, findsOneWidget);
          expect(textRegraDe3_4, findsOneWidget);
          expect(textRegraDe3_5, findsOneWidget);
          expect(textRegraDe3_6, findsOneWidget);
          expect(textRegraDe3_7, findsOneWidget);
          expect(textRegraDe3_8, findsOneWidget);
          expect(textRegraDe3_9, findsOneWidget);
          expect(textRegraDe3_10, findsOneWidget);
          expect(textRegraDe3_11, findsOneWidget);
          expect(textRegraDe3_12, findsOneWidget);
          expect(textRegraDe3_13, findsOneWidget);
          expect(textRegraDe3_14, findsOneWidget);
          expect(textRegraDe3_15, findsOneWidget);
          expect(textRegraDe3_16, findsOneWidget);
          
          expect(textAssetImage3, findsOneWidget);
          expect(textAssetImage4, findsOneWidget);
          expect(textAssetImage5, findsOneWidget);
          expect(textAssetImage6, findsOneWidget);
          expect(textAssetImage8, findsOneWidget);
          expect(textAssetImage9, findsOneWidget);
          expect(textAssetImage10, findsOneWidget);
          expect(textAssetImage11, findsOneWidget);
          expect(textAssetImage12, findsOneWidget);
          expect(textAssetImage13, findsOneWidget);
        },
      );

      testWidgets(
        "Testando os botōes da AppBar na tela de Regra de 3",
        (WidgetTester tester) async {
          await tester.pumpWidget(MaterialApp(
            home: HomePage(),
          ));

          await tester.tap(find.text(
            CoreStrings.titleRegraDe3,
          ));
          await tester.pumpAndSettle(Duration(seconds: 1));

          await tester.tap(find.byIcon(Icons.reply));
          await tester.pumpAndSettle(Duration(seconds: 1));
          final homePageTemplate =
              find.byKey(Key(CoreKeys.homePageButtonsGridTemplate));
          expect(homePageTemplate, findsOneWidget);

          await tester.tap(find.text(
            CoreStrings.titleRegraDe3,
          ));
          await tester.pumpAndSettle(Duration(seconds: 1));

          await tester.tap(find.byIcon(Person.calc));
          await tester.pumpAndSettle(Duration(seconds: 1));
          final calcRegraDe3Template =
              find.byKey(Key(CoreKeys.calcRegraDe3Template));
          expect(calcRegraDe3Template, findsOneWidget);
        },
      );
    },
  );
}
