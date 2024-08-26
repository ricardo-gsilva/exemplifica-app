import 'package:exemplifica/utils/constants/core_keys.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/utils/constants/core_strings_assets.dart';
import 'package:exemplifica/utils/constants/strings/strings_expoentes.dart';
import 'package:exemplifica/view/page/regras_basicas_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group(
    "Testes para a tela de Expoentes",
    () {
      testWidgets(
        "Teste de widgets da tela de Expoentes",
        (WidgetTester tester) async {
          // await tester.pumpWidget(MaterialApp(
          //   home: ExpoentesPage(),
          // ));

          final contentList = find.byKey(Key(CoreKeys.contentList));
          final customImageAsset = find.byKey(Key(CoreKeys.customImageAsset));
          final customText = find.byKey(Key(CoreKeys.customText));
          final iconsReply = find.byIcon(Icons.reply);
          final iconsHome = find.byIcon(Icons.home);

          expect(iconsHome, findsOneWidget);
          expect(iconsReply, findsOneWidget);
          expect(contentList, findsOneWidget);
          expect(customImageAsset, findsNWidgets(4));
          expect(customText, findsNWidgets(5));
        },
      );

      testWidgets(
        "Teste de conteudo carregado na tela de Expoentes",
        (WidgetTester tester) async {
          // await tester.pumpWidget(MaterialApp(
          //   home: ExpoentesPage(),
          // ));

          final textExpoentes1 =
              find.text(CoreStringsExpoentes.text1_expoentes);
          final textAssetImage1 =
              find.image(AssetImage(CoreStringsAssets.expoentes_assets_2));
          final textExpoentes2 =
              find.text(CoreStringsExpoentes.text2_expoentes);
          final textAssetImage2 =
              find.image(AssetImage(CoreStringsAssets.expoentes_assets_3));
          final textExpoentes3 =
              find.text(CoreStringsExpoentes.text3_expoentes);
          final textAssetImage3 =
              find.image(AssetImage(CoreStringsAssets.expoentes_assets_4));
          final textExpoentes4 =
              find.text(CoreStringsExpoentes.text4_expoentes);
          final textAssetImage5 =
              find.image(AssetImage(CoreStringsAssets.expoentes_assets_5));

          expect(textExpoentes1, findsOneWidget);
          expect(textExpoentes2, findsOneWidget);
          expect(textExpoentes3, findsOneWidget);
          expect(textExpoentes4, findsOneWidget);

          expect(textAssetImage1, findsOneWidget);
          expect(textAssetImage2, findsOneWidget);
          expect(textAssetImage3, findsOneWidget);
          expect(textAssetImage5, findsOneWidget);
        },
      );

      testWidgets(
        "Testando os botōes da AppBar na tela Expoentes",
        (WidgetTester tester) async {
          await tester.pumpWidget(MaterialApp(
            home: RegrasBasicasPage(),
          ));

          await tester.tap(find.text(
            CoreStrings.titleButtonExpoentes,
          ));
          await tester.pumpAndSettle(Duration(seconds: 1));

          await tester.tap(find.byIcon(Icons.reply));
          await tester.pumpAndSettle(Duration(seconds: 1));
          final regrasBasicasTemplate =
              find.byKey(Key(CoreKeys.regrasBasicasTemplate));
          expect(regrasBasicasTemplate, findsOneWidget);

          await tester.tap(find.text(
            CoreStrings.titleButtonExpoentes,
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
