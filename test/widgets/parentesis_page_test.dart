import 'package:exemplifica/utils/constants/core_keys.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/utils/constants/core_strings_assets.dart';
import 'package:exemplifica/utils/constants/strings/strings_parentesis.dart';
import 'package:exemplifica/view/page/regras_basicas_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group(
    "Teste da tela de Parêntesis",
    () {
      testWidgets(
        "Teste da tela de Parentesis",
        (WidgetTester tester) async {
          await tester.pumpWidget(MaterialApp(
            home: RegrasBasicasPage(),
          ));

          await tester.tap(find.text(CoreStrings.titleButtonParentesis));
          await tester.pumpAndSettle(Duration(seconds: 1));

          final contentList = find.byKey(Key(CoreKeys.contentList));
          final customImageAsset = find.byKey(Key(CoreKeys.customImageAsset));
          final customText = find.byKey(Key(CoreKeys.customText));
          final iconsReply = find.byIcon(Icons.reply);
          final iconsHome = find.byIcon(Icons.home);

          expect(iconsHome, findsOneWidget);
          expect(iconsReply, findsOneWidget);
          expect(contentList, findsOneWidget);
          expect(customImageAsset, findsNWidgets(6));
          expect(customText, findsNWidgets(8));
        },
      );

      testWidgets(
        "Teste de conteudo carregado na tela de Parêntesis",
        (WidgetTester tester) async {
          await tester.pumpWidget(MaterialApp(
            home: RegrasBasicasPage(),
          ));

          await tester.tap(find.text(CoreStrings.titleButtonParentesis));
          await tester.pumpAndSettle(Duration(seconds: 1));

          final textParentesis1 =
              find.text(CoreStringsParentesis.text1_parentesis);
          final textAssetImage1 =
              find.image(AssetImage(CoreStringsAssets.parentesis_assets_1));
          final textParentesis2 =
              find.text(CoreStringsParentesis.text2_parentesis);
          final textAssetImage2 =
              find.image(AssetImage(CoreStringsAssets.parentesis_assets_2));
          final textParentesis3 =
              find.text(CoreStringsParentesis.text3_parentesis);
          final textAssetImage3 =
              find.image(AssetImage(CoreStringsAssets.parentesis_assets_3));
          final textParentesis4 =
              find.text(CoreStringsParentesis.text4_parentesis);
          final textParentesis5 =
              find.text(CoreStringsParentesis.text5_parentesis);
          final textAssetImage5 =
              find.image(AssetImage(CoreStringsAssets.parentesis_assets_5));
          final textParentesis6 =
              find.text(CoreStringsParentesis.text6_parentesis);
          final textAssetImage6 =
              find.image(AssetImage(CoreStringsAssets.parentesis_assets_6));
          final textParentesis7 =
              find.text(CoreStringsParentesis.text7_parentesis);
          final textAssetImage7 =
              find.image(AssetImage(CoreStringsAssets.parentesis_assets_7));

          expect(textParentesis1, findsOneWidget);
          expect(textParentesis2, findsOneWidget);
          expect(textParentesis3, findsOneWidget);
          expect(textParentesis4, findsOneWidget);
          expect(textParentesis5, findsOneWidget);
          expect(textParentesis6, findsOneWidget);
          expect(textParentesis7, findsOneWidget);

          expect(textAssetImage1, findsOneWidget);
          expect(textAssetImage2, findsOneWidget);
          expect(textAssetImage3, findsOneWidget);
          expect(textAssetImage5, findsOneWidget);
          expect(textAssetImage6, findsOneWidget);
          expect(textAssetImage7, findsOneWidget);
        },
      );

      testWidgets(
        "Testando os botōes da AppBar na tela Parêntesis",
        (WidgetTester tester) async {
          await tester.pumpWidget(MaterialApp(
            home: RegrasBasicasPage(),
          ));

          await tester.tap(find.text(CoreStrings.titleButtonParentesis));
          await tester.pumpAndSettle(Duration(seconds: 1));

          await tester.tap(find.byIcon(Icons.reply));
          await tester.pumpAndSettle(Duration(seconds: 1));
          final regrasBasicasTemplate =
              find.byKey(Key(CoreKeys.regrasBasicasTemplate));
          expect(regrasBasicasTemplate, findsOneWidget);

          await tester.tap(find.text(
            CoreStrings.titleButtonParentesis,
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
