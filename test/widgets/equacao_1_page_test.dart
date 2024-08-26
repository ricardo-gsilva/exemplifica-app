import 'package:exemplifica/utils/constants/core_keys.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/utils/constants/core_strings_assets.dart';
import 'package:exemplifica/utils/constants/strings/strings_equacao_1.dart';
import 'package:exemplifica/utils/person_icons.dart';
import 'package:exemplifica/view/page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group(
    "Testes para a tela de Equação de 1 Grau",
    () {
      testWidgets(
        "Teste de widgets da tela de Equação de 1 Grau",
        (WidgetTester tester) async {
          await tester.pumpWidget(MaterialApp(
            home: HomePage(),
          ));

          await tester.tap(find.text(CoreStrings.titleEquacao1));
          await tester.pumpAndSettle(Duration(seconds: 1));

          final text = find.text(CoreStrings.titleEquacao1);
          expect(text, findsOneWidget);

          final contentList = find.byKey(Key(CoreKeys.contentList));
          final customImageAsset = find.byKey(Key(CoreKeys.customImageAsset));
          final customText = find.byKey(Key(CoreKeys.customText));
          final iconsReply = find.byIcon(Icons.reply);
          final iconsHome = find.byIcon(Person.calc);

          expect(iconsHome, findsOneWidget);
          expect(iconsReply, findsOneWidget);
          expect(contentList, findsOneWidget);
          expect(customImageAsset, findsNWidgets(6));
          expect(customText, findsNWidgets(8));
        },
      );

      testWidgets(
        "Teste de conteudo carregado na tela de Equação de 1 Grau",
        (WidgetTester tester) async {
          await tester.pumpWidget(MaterialApp(
            home: HomePage(),
          ));

          await tester.tap(find.text(CoreStrings.titleEquacao1));
          await tester.pumpAndSettle(Duration(seconds: 1));

          final textEquacao1_1 = find.text(CoreStringsEquacao1.text1_Equacao1);
          final textEquacao1_2 = find.text(CoreStringsEquacao1.text2_Equacao1);
          final textEquacao1_3 = find.text(CoreStringsEquacao1.text3_Equacao1);
          final textEquacao1_4 = find.text(CoreStringsEquacao1.text4_Equacao1);
          final textEquacao1_5 = find.text(CoreStringsEquacao1.text5_Equacao1);
          final textEquacao1_6 = find.text(CoreStringsEquacao1.text6_Equacao1);
          final textEquacao1_7 = find.text(CoreStringsEquacao1.text7_Equacao1);

          final textAssetImage2 = find.image(AssetImage(CoreStringsAssets.equacao_1_assets_2));
          final textAssetImage3 = find.image(AssetImage(CoreStringsAssets.equacao_1_assets_3));
          final textAssetImage4 = find.image(AssetImage(CoreStringsAssets.equacao_1_assets_4));
          final textAssetImage5 = find.image(AssetImage(CoreStringsAssets.equacao_1_assets_5));
          final textAssetImage6 = find.image(AssetImage(CoreStringsAssets.equacao_1_assets_6));
          final textAssetImage7 = find.image(AssetImage(CoreStringsAssets.equacao_1_assets_7));          

          expect(textEquacao1_1, findsOneWidget);
          expect(textEquacao1_2, findsOneWidget);
          expect(textEquacao1_3, findsOneWidget);
          expect(textEquacao1_4, findsOneWidget);
          expect(textEquacao1_5, findsOneWidget);
          expect(textEquacao1_6, findsOneWidget);
          expect(textEquacao1_7, findsOneWidget);
          
          expect(textAssetImage2, findsOneWidget);
          expect(textAssetImage3, findsOneWidget);
          expect(textAssetImage4, findsOneWidget);
          expect(textAssetImage5, findsOneWidget);
          expect(textAssetImage6, findsOneWidget);
          expect(textAssetImage7, findsOneWidget);
        },
      );

      testWidgets(
        "Testando os botōes da AppBar na tela de Equação de 1 Grau",
        (WidgetTester tester) async {
          await tester.pumpWidget(MaterialApp(
            home: HomePage(),
          ));

          await tester.tap(find.text(CoreStrings.titleEquacao1,));
          await tester.pumpAndSettle(Duration(seconds: 1));

          await tester.tap(find.byIcon(Icons.reply));
          await tester.pumpAndSettle(Duration(seconds: 1));
          final homePageTemplate =
              find.byKey(Key(CoreKeys.homePageButtonsGridTemplate));
          expect(homePageTemplate, findsOneWidget);

          await tester.tap(find.text(
            CoreStrings.titleEquacao1,
          ));
          await tester.pumpAndSettle(Duration(seconds: 1));

          await tester.tap(find.byIcon(Person.calc));
          await tester.pumpAndSettle(Duration(seconds: 1));
          final calcEquacao1Template = find.byKey(Key(CoreKeys.calcEquacao1Template));
          expect(calcEquacao1Template, findsOneWidget);
        },
      );
    },
  );
}
