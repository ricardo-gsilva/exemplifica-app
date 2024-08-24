import 'package:exemplifica/utils/constants/core_keys.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/view/page/calculators_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group(
    "Testes de tela de Calculadoras",
    () {
      testWidgets(
        "Teste de widgets com Calculadora Page",
        (WidgetTester tester) async {
          await tester.pumpWidget(MaterialApp(
            home: CalculatorsPage(),
          ));

          final calculatorsTemplate =
              find.byKey(Key(CoreKeys.buttonsGridCalculators));
          final customScaffold = find.byKey(Key(CoreKeys.customScaffold));
          final titleCalculators = find.text(CoreStrings.titleCalculadoras);
          final customButton = find.byKey(Key(CoreKeys.customButton));
          final rowButtons = find.byKey(Key(CoreKeys.rowButtons));
          expect(calculatorsTemplate, findsOneWidget);
          expect(customScaffold, findsOneWidget);
          expect(titleCalculators, findsOneWidget);
          expect(rowButtons, findsNWidgets(3));
          expect(customButton, findsNWidgets(10));
        },
      );

      testWidgets(
        "Teste botōes de Calculadora Page",
        (WidgetTester tester) async {
          await tester.pumpWidget(MaterialApp(
            home: CalculatorsPage(),
          ));

          await tester.tap(find.text(
            CoreStrings.titleTabuada,
          ));
          await tester.pumpAndSettle(Duration(seconds: 1));
          expect(find.byKey(Key(CoreKeys.calcTabuadaTemplate)), findsOneWidget);
          await tester.tap(find.byIcon(Icons.reply));
          await tester.pumpAndSettle(Duration(seconds: 1));

          await tester.tap(find.text(
            CoreStrings.titleFatorial,
          ));
          await tester.pumpAndSettle(Duration(seconds: 1));
          expect(
              find.byKey(Key(CoreKeys.calcFatorialTemplate)), findsOneWidget);
          await tester.tap(find.byIcon(Icons.reply));
          await tester.pumpAndSettle(Duration(seconds: 1));

          await tester.tap(find.text(
            CoreStrings.titleEquacao1,
          ));
          await tester.pumpAndSettle(Duration(seconds: 1));
          expect(
              find.byKey(Key(CoreKeys.calcEquacao1Template)), findsOneWidget);
          await tester.tap(find.byIcon(Icons.reply));
          await tester.pumpAndSettle(Duration(seconds: 1));

          await tester.tap(find.text(
            CoreStrings.titleEquacao2,
          ));
          await tester.pumpAndSettle(Duration(seconds: 1));
          expect(
              find.byKey(Key(CoreKeys.calcEquacao2Template)), findsOneWidget);
          await tester.tap(find.byIcon(Icons.reply));
          await tester.pumpAndSettle(Duration(seconds: 1));

          await tester.tap(find.text(
            CoreStrings.titleJurosCompostos,
          ));
          await tester.pumpAndSettle(Duration(seconds: 1));
          expect(find.byKey(Key(CoreKeys.calcJurosCompostosTemplate)),
              findsOneWidget);
          await tester.tap(find.byIcon(Icons.reply));
          await tester.pumpAndSettle(Duration(seconds: 1));

          await tester.tap(find.text(
            CoreStrings.titleJurosSimples,
          ));
          await tester.pumpAndSettle(Duration(seconds: 1));
          expect(find.byKey(Key(CoreKeys.calcJurosSimplesTemplate)),
              findsOneWidget);
          await tester.tap(find.byIcon(Icons.reply));
          await tester.pumpAndSettle(Duration(seconds: 1));

          await tester.tap(find.text(
            CoreStrings.titleMmc,
          ));
          await tester.pumpAndSettle(Duration(seconds: 1));
          expect(find.byKey(Key(CoreKeys.calcMmcTemplate)), findsOneWidget);
          await tester.tap(find.byIcon(Icons.reply));
          await tester.pumpAndSettle(Duration(seconds: 1));

          await tester.tap(find.text(
            CoreStrings.titleMdc,
          ));
          await tester.pumpAndSettle(Duration(seconds: 1));
          expect(find.byKey(Key(CoreKeys.calcMdcTemplate)), findsOneWidget);
          await tester.tap(find.byIcon(Icons.reply));
          await tester.pumpAndSettle(Duration(seconds: 1));

          await tester.tap(find.text(
            CoreStrings.titlePorcentagem,
          ));
          await tester.pumpAndSettle(Duration(seconds: 1));
          expect(find.byKey(Key(CoreKeys.calcPorcentagemTemplate)),
              findsOneWidget);
          await tester.tap(find.byIcon(Icons.reply));
          await tester.pumpAndSettle(Duration(seconds: 1));

          await tester.tap(find.text(
            CoreStrings.titleRegraDe3,
          ));
          await tester.pumpAndSettle(Duration(seconds: 1));
          expect(
              find.byKey(Key(CoreKeys.calcRegraDe3Template)), findsOneWidget);
          await tester.tap(find.byIcon(Icons.reply));
          await tester.pumpAndSettle(Duration(seconds: 1));
        },
      );
    },
  );
}
