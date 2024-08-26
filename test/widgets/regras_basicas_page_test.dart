import 'package:exemplifica/utils/constants/core_keys.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/view/page/home_page.dart';
import 'package:exemplifica/view/page/regras_basicas_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("Testes com a tela de Regras Básicas", () {
    testWidgets(
      "Teste de widgets da tela de Regras Basicas",
      (WidgetTester tester) async {
        await tester.pumpWidget(MaterialApp(
          home: RegrasBasicasPage(),
        ));

        final regrasBasicasTemplate =
            find.byKey(Key(CoreKeys.regrasBasicasTemplate));
        final customScaffold = find.byKey(Key(CoreKeys.customScaffold));
        final titleRegrasBasicas = find.text(CoreStrings.titleRegrasBasicas);
        final customButton = find.byKey(Key(CoreKeys.customButton));
        expect(regrasBasicasTemplate, findsOneWidget);
        expect(customScaffold, findsOneWidget);
        expect(titleRegrasBasicas, findsOneWidget);
        expect(customButton, findsNWidgets(5));
      },
    );

    testWidgets(
      "Teste com os botōes da tela de Regras Básicas",
      (WidgetTester tester) async {
        await tester.pumpWidget(MaterialApp(
          home: HomePage(),
        ));

        await tester.tap(find.text(
          CoreStrings.titleRegrasBasicas,
        ));
        await tester.pumpAndSettle(Duration(seconds: 1));

        await tester.tap(find.text(
          CoreStrings.titleButtonParentesis,
        ));
        await tester.pumpAndSettle(Duration(seconds: 1));
        expect(find.byKey(Key(CoreKeys.parentesisTemplate)), findsOneWidget);
        await tester.tap(find.byIcon(Icons.reply));
        await tester.pumpAndSettle(Duration(seconds: 1));

        await tester.tap(find.text(
          CoreStrings.titleButtonExpoentes,
        ));
        await tester.pumpAndSettle(Duration(seconds: 1));
        expect(find.byKey(Key(CoreKeys.expoentesTemplate)), findsOneWidget);
        await tester.tap(find.byIcon(Icons.reply));
        await tester.pumpAndSettle(Duration(seconds: 1));

        await tester.tap(find.text(
          CoreStrings.titleButtonMultipDiv,
        ));
        await tester.pumpAndSettle(Duration(seconds: 1));
        expect(find.byKey(Key(CoreKeys.multiplicacaoDivisaoTemplate)),
            findsOneWidget);
        await tester.tap(find.byIcon(Icons.reply));
        await tester.pumpAndSettle(Duration(seconds: 1));

        await tester.tap(find.text(
          CoreStrings.titleButtonSomaSub,
        ));
        await tester.pumpAndSettle(Duration(seconds: 1));
        expect(find.byKey(Key(CoreKeys.somaSubtracaoTemplate)), findsOneWidget);
        await tester.tap(find.byIcon(Icons.reply));
        await tester.pumpAndSettle(Duration(seconds: 1));

        await tester.tap(find.text(
          CoreStrings.titleButtonRegraSinal,
        ));
        await tester.pumpAndSettle(Duration(seconds: 1));
        expect(find.byKey(Key(CoreKeys.regrasSinaisTemplate)), findsOneWidget);
        await tester.tap(find.byIcon(Icons.reply));
        await tester.pumpAndSettle(Duration(seconds: 1));

        await tester.tap(find.byIcon(Icons.reply));
        await tester.pumpAndSettle(Duration(seconds: 1));
        expect(find.byKey(Key(CoreKeys.homePageButtonsGridTemplate)), findsOneWidget);
      },
    );
  });
}
