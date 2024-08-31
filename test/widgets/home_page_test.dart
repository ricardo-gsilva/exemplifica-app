import 'package:exemplifica/utils/constants/core_keys.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/utils/person_icons.dart';
import 'package:exemplifica/view/page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group(
    "Testes da tela de Home Page",
    () {
      testWidgets(
        "Teste de widgets com a Home Page",
        (WidgetTester tester) async {
          await tester.pumpWidget(MaterialApp(
            home: HomePage(),
          ));
          await tester.pumpAndSettle(Duration(seconds: 5));
          final homeTemplate = find.byKey(Key(CoreKeys.homePageButtonsGridTemplate));
          final logoExemplifica = find.byKey(Key(CoreKeys.logoExemplifica));
          final customScaffold = find.byKey(Key(CoreKeys.customScaffold));
          final buttonsGrid = find.byKey(Key(CoreKeys.buttonsGrid));
          final buttonPrimary = find.byKey(Key(CoreKeys.buttonPrimary));
          final rowButtons = find.byKey(Key(CoreKeys.rowButtons));
          final customButton = find.byKey(Key(CoreKeys.customButton));

          expect(homeTemplate, findsOneWidget);
          expect(logoExemplifica, findsOneWidget);
          expect(customScaffold, findsOneWidget);
          expect(buttonsGrid, findsOneWidget);
          expect(buttonPrimary, findsNWidgets(2));
          expect(rowButtons, findsNWidgets(5));
          expect(customButton, findsNWidgets(10));
        },
      );

      testWidgets(
        "Teste ButtonPrimary da Home Page",
        (WidgetTester tester) async {
          await tester.pumpWidget(MaterialApp(
            home: HomePage(),
          ));

          final buttonprimaryoneTitle =
              find.text(CoreStrings.titleCalculadoras);
          final buttonprimaryoneIcon = find.byIcon(Person.calc);
          expect(buttonprimaryoneTitle, findsOneWidget);
          expect(buttonprimaryoneIcon, findsOneWidget);

          final buttonprimarytwoTitle =
              find.text(CoreStrings.titleRegrasBasicas);
          final buttonprimarytwoIcon = find.byIcon(Person.book);
          expect(buttonprimarytwoTitle, findsOneWidget);
          expect(buttonprimarytwoIcon, findsOneWidget);

          await tester.tap(find.byIcon(Person.calc));
          await tester.pumpAndSettle(Duration(seconds: 1));
          expect(
              find.byKey(Key(CoreKeys.buttonsGridCalculators)), findsOneWidget);

          await tester.tap(find.byIcon(Icons.reply));
          await tester.pumpAndSettle(Duration(seconds: 1));

          await tester.tap(find.byIcon(Person.book));
          await tester.pumpAndSettle(Duration(seconds: 1));
          expect(
              find.byKey(
                Key(CoreKeys.regrasBasicasTemplate),
              ),
              findsOneWidget);
        },
      );

      testWidgets(
        "Teste ButtonsGrid da Home Page",
        (WidgetTester tester) async {
          await tester.pumpWidget(MaterialApp(
            home: HomePage(),
          ));

          final rowButtonsEquacao1 = find.text(CoreStrings.titleEquacao1);
          final rowButtonsEquacao2 = find.text(CoreStrings.titleEquacao2);
          final rowButtonsFatorial = find.text(CoreStrings.titleFatorial);
          final rowButtonsTabuada = find.text(CoreStrings.titleTabuada);
          final rowButtonsJurosCompostos =
              find.text(CoreStrings.titleJurosCompostos);
          final rowButtonsJurosSimples =
              find.text(CoreStrings.titleJurosSimples);
          final rowButtonsMmc = find.text(CoreStrings.titleMmc);
          final rowButtonsMdc = find.text(CoreStrings.titleMdc);
          final rowButtonsPorcentagem = find.text(CoreStrings.titlePorcentagem);
          final rowButtonsRegraDe3 = find.text(CoreStrings.titleRegraDe3);

          expect(rowButtonsEquacao1, findsOneWidget);
          expect(rowButtonsEquacao2, findsOneWidget);
          expect(rowButtonsFatorial, findsOneWidget);
          expect(rowButtonsTabuada, findsOneWidget);
          expect(rowButtonsJurosCompostos, findsOneWidget);
          expect(rowButtonsJurosSimples, findsOneWidget);
          expect(rowButtonsMmc, findsOneWidget);
          expect(rowButtonsMdc, findsOneWidget);
          expect(rowButtonsPorcentagem, findsOneWidget);
          expect(rowButtonsRegraDe3, findsOneWidget);

          await tester.tap(find.text(CoreStrings.titleEquacao1));
          await tester.pumpAndSettle(Duration(seconds: 1));
          expect(find.byKey(Key(CoreKeys.pageTemplate)), findsOneWidget);
          await tester.tap(find.byIcon(Icons.reply));
          await tester.pumpAndSettle(Duration(seconds: 1));

          await tester.tap(find.text(CoreStrings.titleEquacao2));
          await tester.pumpAndSettle(Duration(seconds: 1));
          expect(find.byKey(Key(CoreKeys.pageTemplate)), findsOneWidget);
          await tester.tap(find.byIcon(Icons.reply));
          await tester.pumpAndSettle(Duration(seconds: 1));

          await tester.tap(find.text(CoreStrings.titleFatorial));
          await tester.pumpAndSettle(Duration(seconds: 1));
          expect(find.byKey(Key(CoreKeys.pageTemplate)), findsOneWidget);
          await tester.tap(find.byIcon(Icons.reply));
          await tester.pumpAndSettle(Duration(seconds: 1));

          await tester.tap(find.text(CoreStrings.titleTabuada));
          await tester.pumpAndSettle(Duration(seconds: 1));
          expect(find.byKey(Key(CoreKeys.pageTemplate)), findsOneWidget);
          await tester.tap(find.byIcon(Icons.reply));
          await tester.pumpAndSettle(Duration(seconds: 1));

          await tester.tap(find.text(CoreStrings.titleJurosCompostos));
          await tester.pumpAndSettle(Duration(seconds: 1));
          expect(find.byKey(Key(CoreKeys.pageTemplate)), findsOneWidget);
          await tester.tap(find.byIcon(Icons.reply));
          await tester.pumpAndSettle(Duration(seconds: 1));

          await tester.tap(find.text(CoreStrings.titleJurosSimples));
          await tester.pumpAndSettle(Duration(seconds: 1));
          expect(find.byKey(Key(CoreKeys.pageTemplate)), findsOneWidget);
          await tester.tap(find.byIcon(Icons.reply));
          await tester.pumpAndSettle(Duration(seconds: 1));

          await tester.tap(find.text(CoreStrings.titleMmc));
          await tester.pumpAndSettle(Duration(seconds: 1));
          expect(find.byKey(Key(CoreKeys.pageTemplate)), findsOneWidget);
          await tester.tap(find.byIcon(Icons.reply));
          await tester.pumpAndSettle(Duration(seconds: 1));

          await tester.tap(find.text(CoreStrings.titleMdc));
          await tester.pumpAndSettle(Duration(seconds: 1));
          expect(find.byKey(Key(CoreKeys.pageTemplate)), findsOneWidget);
          await tester.tap(find.byIcon(Icons.reply));
          await tester.pumpAndSettle(Duration(seconds: 1));

          await tester.tap(find.text(CoreStrings.titlePorcentagem));
          await tester.pumpAndSettle(Duration(seconds: 1));
          expect(find.byKey(Key(CoreKeys.pageTemplate)), findsOneWidget);
          await tester.tap(find.byIcon(Icons.reply));
          await tester.pumpAndSettle(Duration(seconds: 1));

          await tester.tap(find.text(CoreStrings.titleRegraDe3));
          await tester.pumpAndSettle(Duration(seconds: 1));
          expect(find.byKey(Key(CoreKeys.pageTemplate)), findsOneWidget);
          await tester.tap(find.byIcon(Icons.reply));
          await tester.pumpAndSettle(Duration(seconds: 1));
        },
      );
    },
  );
}
