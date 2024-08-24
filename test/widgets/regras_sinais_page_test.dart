import 'package:exemplifica/utils/constants/core_keys.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/utils/constants/core_strings_assets.dart';
import 'package:exemplifica/utils/constants/strings/strings_regras_sinais.dart';
import 'package:exemplifica/view/page/regras_basicas_page.dart';
import 'package:exemplifica/view/page/regras_sinais_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group(
    "Testes da tela de Regras de Sinais",
    () {
      testWidgets(
        "Teste da tela de Soma e Subtração",
        (WidgetTester tester) async {
          await tester.pumpWidget(MaterialApp(
            home: RegrasSinaisPage(),
          ));

          final contentList = find.byKey(Key(CoreKeys.contentList));
          final customText = find.byKey(Key(CoreKeys.customText));
          final customImageAsset = find.byKey(Key(CoreKeys.customImageAsset));
          final iconsReply = find.byIcon(Icons.reply);
          final iconsHome = find.byIcon(Icons.home);

          expect(iconsHome, findsOneWidget);
          expect(iconsReply, findsOneWidget);
          expect(contentList, findsOneWidget);
          expect(customImageAsset, findsNWidgets(3));
          expect(customText, findsNWidgets(13));
        },
      );

      testWidgets(
        "Teste de conteudo carregado na tela de Multiplicação e Divisão",
        (WidgetTester tester) async {
          await tester.pumpWidget(MaterialApp(
            home: RegrasSinaisPage(),
          ));

          final textRegrasSinais1 =
              find.text(CoreStringsRegrasSinais.text1_RegraSinal);
          final textAssetImage2 =
              find.image(AssetImage(CoreStringsAssets.regras_sinais_assets_2));
          final textRegrasSinais2 =
              find.text(CoreStringsRegrasSinais.text2_RegraSinal);
          final textRegrasSinais3 =
              find.text(CoreStringsRegrasSinais.text3_RegraSinal);
          final textAssetImage5 =
              find.image(AssetImage(CoreStringsAssets.regras_sinais_assets_5));
          final textRegrasSinais4 =
              find.text(CoreStringsRegrasSinais.text4_RegraSinal);
          final textRegrasSinais5 =
              find.text(CoreStringsRegrasSinais.text5_RegraSinal);
          final textAssetImage3 =
              find.image(AssetImage(CoreStringsAssets.regras_sinais_assets_3));
          final textRegrasSinais6 =
              find.text(CoreStringsRegrasSinais.text6_RegraSinal);
          final textRegrasSinais7 =
              find.text(CoreStringsRegrasSinais.text7_RegraSinal);
          final textRegrasSinais8 =
              find.text(CoreStringsRegrasSinais.text8_RegraSinal);
          final textRegrasSinais9 =
              find.text(CoreStringsRegrasSinais.text9_RegraSinal);
          final textRegrasSinais10 =
              find.text(CoreStringsRegrasSinais.text10_RegraSinal);
          final textRegrasSinais11 =
              find.text(CoreStringsRegrasSinais.text11_RegraSinal);
          final textRegrasSinais12 =
              find.text(CoreStringsRegrasSinais.text12_RegraSinal);

          expect(textRegrasSinais1, findsOneWidget);
          expect(textRegrasSinais2, findsOneWidget);
          expect(textRegrasSinais3, findsOneWidget);
          expect(textRegrasSinais4, findsOneWidget);
          expect(textRegrasSinais5, findsOneWidget);
          expect(textRegrasSinais6, findsOneWidget);
          expect(textRegrasSinais7, findsOneWidget);
          expect(textRegrasSinais8, findsOneWidget);
          expect(textRegrasSinais9, findsOneWidget);
          expect(textRegrasSinais10, findsOneWidget);
          expect(textRegrasSinais11, findsOneWidget);
          expect(textRegrasSinais12, findsOneWidget);

          expect(textAssetImage2, findsOneWidget);
          expect(textAssetImage5, findsOneWidget);
          expect(textAssetImage3, findsOneWidget);
        },
      );

      testWidgets(
        "Testando os botōes da AppBar na tela Soma e Subtração",
        (WidgetTester tester) async {
          await tester.pumpWidget(MaterialApp(
            home: RegrasBasicasPage(),
          ));

          await tester.tap(find.text(
            CoreStrings.titleButtonRegraSinal,
          ));
          await tester.pumpAndSettle(Duration(seconds: 1));

          await tester.tap(find.byIcon(Icons.reply));
          await tester.pumpAndSettle(Duration(seconds: 1));
          final regrasBasicasTemplate =
              find.byKey(Key(CoreKeys.regrasBasicasTemplate));
          expect(regrasBasicasTemplate, findsOneWidget);

          await tester.tap(find.text(
            CoreStrings.titleButtonRegraSinal,
          ));
          await tester.pumpAndSettle(Duration(seconds: 1));

          await tester.tap(find.byIcon(Icons.home));
          await tester.pumpAndSettle(Duration(seconds: 1));
          final homePageTemplate =
              find.byKey(Key(CoreKeys.homePageButtonsGridTemplate));
          expect(homePageTemplate, findsOneWidget);
        },
      );
    },
  );
}
