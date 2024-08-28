import 'package:exemplifica/utils/constants/core_keys.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/utils/constants/strings/strings_soma_sub.dart';
import 'package:exemplifica/view/page/regras_basicas_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group(
    "Testes da tela de Soma e Subtração",
    () {
      testWidgets(
        "Teste de widgets da tela de Soma e Subtração",
        (WidgetTester tester) async {
          await tester.pumpWidget(MaterialApp(
            home: RegrasBasicasPage(),
          ));

          await tester.tap(find.text(CoreStrings.titleButtonSomaSub));
          await tester.pumpAndSettle(Duration(seconds: 1));

          final contentList = find.byKey(Key(CoreKeys.contentList));
          final customText = find.byKey(Key(CoreKeys.customText));
          final iconsReply = find.byIcon(Icons.reply);
          final iconsHome = find.byIcon(Icons.home);

          expect(iconsHome, findsOneWidget);
          expect(iconsReply, findsOneWidget);
          expect(contentList, findsOneWidget);
          expect(customText, findsNWidgets(2));
        },
      );

      testWidgets(
        "Teste de conteudo carregado na tela de Multiplicação e Divisão",
        (WidgetTester tester) async {
          await tester.pumpWidget(MaterialApp(
            home: RegrasBasicasPage(),
          ));

          await tester.tap(find.text(CoreStrings.titleButtonSomaSub));
          await tester.pumpAndSettle(Duration(seconds: 1));

          final textSomaSubtracao1 =
              find.text(CoreStringsSomaSub.text1_SomaSub);

          expect(textSomaSubtracao1, findsOneWidget);
        },
      );

      testWidgets(
        "Testando os botōes da AppBar na tela Soma e Subtração",
        (WidgetTester tester) async {
          await tester.pumpWidget(MaterialApp(
            home: RegrasBasicasPage(),
          ));

          await tester.tap(find.text(CoreStrings.titleButtonSomaSub));
          await tester.pumpAndSettle(Duration(seconds: 1));

          await tester.tap(find.byIcon(Icons.reply));
          await tester.pumpAndSettle(Duration(seconds: 1));
          final regrasBasicasTemplate =
              find.byKey(Key(CoreKeys.regrasBasicasTemplate));
          expect(regrasBasicasTemplate, findsOneWidget);

          await tester.tap(find.text(
            CoreStrings.titleButtonSomaSub,
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
