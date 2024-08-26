import 'package:exemplifica/utils/constants/core_keys.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/utils/constants/core_strings_assets.dart';
import 'package:exemplifica/utils/constants/strings/strings_mult_div.dart';
import 'package:exemplifica/view/page/multiplicacao_divisao_page.dart';
import 'package:exemplifica/view/page/regras_basicas_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group(
    "Teste da tela de Multiplicação e Divisão",
    () {
      testWidgets(
        "Teste da tela de Multiplicação e Divisão",
        (WidgetTester tester) async {
          // await tester.pumpWidget(MaterialApp(
          //   home: MultiplicacaoDivisaoPage(),
          // ));

          final contentList = find.byKey(Key(CoreKeys.contentList));
          final customImageAsset = find.byKey(Key(CoreKeys.customImageAsset));
          final customText = find.byKey(Key(CoreKeys.customText));
          final iconsReply = find.byIcon(Icons.reply);
          final iconsHome = find.byIcon(Icons.home);

          expect(iconsHome, findsOneWidget);
          expect(iconsReply, findsOneWidget);
          expect(contentList, findsOneWidget);
          expect(customImageAsset, findsNWidgets(9));
          expect(customText, findsNWidgets(15));
        },
      );

      testWidgets(
        "Teste de conteudo carregado na tela de Multiplicação e Divisão",
        (WidgetTester tester) async {
          // await tester.pumpWidget(MaterialApp(
          //   home: MultiplicacaoDivisaoPage(),
          // ));

          final textMultiplicaDiv1 =
              find.text(CoreStringsMultDiv.text1_MultiplicaDiv);
          final textAssetImage2 = find.image(
              AssetImage(CoreStringsAssets.multiplicacaoDivisao_assets_2));
          final textMultiplicaDiv2 =
              find.text(CoreStringsMultDiv.text2_MultiplicaDiv);
          final textMultiplicaDiv3 =
              find.text(CoreStringsMultDiv.text3_MultiplicaDiv);
          final textAssetImage3 = find.image(
              AssetImage(CoreStringsAssets.multiplicacaoDivisao_assets_3));
          final textMultiplicaDiv4 =
              find.text(CoreStringsMultDiv.text4_MultiplicaDiv);
          final textAssetImage4 = find.image(
              AssetImage(CoreStringsAssets.multiplicacaoDivisao_assets_4));
          final textMultiplicaDiv5 =
              find.text(CoreStringsMultDiv.text5_MultiplicaDiv);
          final textAssetImage5 = find.image(
              AssetImage(CoreStringsAssets.multiplicacaoDivisao_assets_5));
          final textMultiplicaDiv6 =
              find.text(CoreStringsMultDiv.text6_MultiplicaDiv);
          final textMultiplicaDiv7 =
              find.text(CoreStringsMultDiv.text7_MultiplicaDiv);
          final textAssetImage11 = find.image(
              AssetImage(CoreStringsAssets.multiplicacaoDivisao_assets_11));
          final textMultiplicaDiv8 =
              find.text(CoreStringsMultDiv.text8_MultiplicaDiv);
          final textAssetImage12 = find.image(
              AssetImage(CoreStringsAssets.multiplicacaoDivisao_assets_12));
          final textMultiplicaDiv9 =
              find.text(CoreStringsMultDiv.text9_MultiplicaDiv);
          final textMultiplicaDiv10 =
              find.text(CoreStringsMultDiv.text10_MultiplicaDiv);
          final textMultiplicaDiv11 =
              find.text(CoreStringsMultDiv.text11_MultiplicaDiv);
          final textAssetImage8 = find.image(
              AssetImage(CoreStringsAssets.multiplicacaoDivisao_assets_8));
          final textMultiplicaDiv12 =
              find.text(CoreStringsMultDiv.text12_MultiplicaDiv);
          final textAssetImage9 = find.image(
              AssetImage(CoreStringsAssets.multiplicacaoDivisao_assets_9));
          final textMultiplicaDiv13 =
              find.text(CoreStringsMultDiv.text13_MultiplicaDiv);
          final textAssetImage10 = find.image(
              AssetImage(CoreStringsAssets.multiplicacaoDivisao_assets_10));
          final textMultiplicaDiv14 =
              find.text(CoreStringsMultDiv.text14_MultiplicaDiv);

          expect(textMultiplicaDiv1, findsOneWidget);
          expect(textMultiplicaDiv2, findsOneWidget);
          expect(textMultiplicaDiv3, findsOneWidget);
          expect(textMultiplicaDiv4, findsOneWidget);
          expect(textMultiplicaDiv5, findsOneWidget);
          expect(textMultiplicaDiv6, findsOneWidget);
          expect(textMultiplicaDiv7, findsOneWidget);
          expect(textMultiplicaDiv8, findsOneWidget);
          expect(textMultiplicaDiv9, findsOneWidget);
          expect(textMultiplicaDiv10, findsOneWidget);
          expect(textMultiplicaDiv11, findsOneWidget);
          expect(textMultiplicaDiv12, findsOneWidget);
          expect(textMultiplicaDiv13, findsOneWidget);
          expect(textMultiplicaDiv14, findsOneWidget);

          expect(textAssetImage2, findsOneWidget);
          expect(textAssetImage3, findsOneWidget);
          expect(textAssetImage4, findsOneWidget);
          expect(textAssetImage5, findsOneWidget);
          expect(textAssetImage8, findsOneWidget);
          expect(textAssetImage9, findsOneWidget);
          expect(textAssetImage10, findsOneWidget);
          expect(textAssetImage11, findsOneWidget);
          expect(textAssetImage12, findsOneWidget);
        },
      );

      testWidgets(
        "Testando os botōes da AppBar na tela Multiplicação e Divisão",
        (WidgetTester tester) async {
          await tester.pumpWidget(MaterialApp(
            home: RegrasBasicasPage(),
          ));

          await tester.tap(find.text(
            CoreStrings.titleButtonMultipDiv,
          ));
          await tester.pumpAndSettle(Duration(seconds: 1));

          await tester.tap(find.byIcon(Icons.reply));
          await tester.pumpAndSettle(Duration(seconds: 1));
          final regrasBasicasTemplate =
              find.byKey(Key(CoreKeys.regrasBasicasTemplate));
          expect(regrasBasicasTemplate, findsOneWidget);

          await tester.tap(find.text(
            CoreStrings.titleButtonMultipDiv,
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
