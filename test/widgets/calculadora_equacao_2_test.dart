import 'package:exemplifica/utils/constants/core_keys.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/utils/enum_calculator.dart';
import 'package:exemplifica/view/page/calculator_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets("Teste de Widgtes com calculadora de Equacao de 2 Grau",
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: CalculatorPage(
        calculator: CalculatorEnum.equacao_2,
        titleAppBar: CoreStrings.titleEquacao2,
        descriptionText: CoreStrings.text1_CalcEquacao2,
        formulaText: CoreStrings.text2_CalcEquacao2,
      ),
    ));

    final title = find.text(CoreStrings.titleEquacao2);
    final iconReply = find.byIcon(Icons.reply);
    final iconHome = find.byIcon(Icons.home);
    final description = find.text(CoreStrings.text1_CalcEquacao2);
    final formula = find.text(CoreStrings.text2_CalcEquacao2);
    final textField = find.byKey(Key(CoreKeys.textFieldInput));
    final labelA = find.text("a:");
    final labelB = find.text("b:");
    final labelC = find.text("c:");
    final customButton = find.byKey(Key(CoreKeys.customButton));
    final calcular = find.text(CoreStrings.calc);
    final limpar = find.text(CoreStrings.clear);

    expect(title, findsOneWidget);
    expect(description, findsOneWidget);
    expect(formula, findsOneWidget);
    expect(textField, findsNWidgets(3));
    expect(labelA, findsOneWidget);
    expect(labelB, findsOneWidget);
    expect(labelC, findsOneWidget);
    expect(customButton, findsNWidgets(2));
    expect(calcular, findsOneWidget);
    expect(limpar, findsOneWidget);
    expect(iconReply, findsOneWidget);
    expect(iconHome, findsOneWidget);
  });
}
