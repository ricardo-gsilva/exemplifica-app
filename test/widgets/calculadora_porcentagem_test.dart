import 'package:exemplifica/utils/constants/core_keys.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/utils/enum_calculator.dart';
import 'package:exemplifica/view/page/calculator_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets("Teste de Widgtes com calculadora de Porcentagem",
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: CalculatorPage(
        calculator: CalculatorEnum.porcentagem,
        titleAppBar: CoreStrings.titlePorcentagem,
        descriptionText: CoreStrings.text1_CalcPorcentagem,
      ),
    ));

    final title = find.text(CoreStrings.titlePorcentagem);
    final iconReply = find.byIcon(Icons.reply);
    final iconHome = find.byIcon(Icons.home);
    final description = find.text(CoreStrings.text1_CalcPorcentagem);
    final textField = find.byKey(Key(CoreKeys.textFieldInput));
    final label1 = find.text("100%");
    final label2 = find.text("X");
    final customButton = find.byKey(Key(CoreKeys.customButton));
    final calcular = find.text(CoreStrings.calc);
    final limpar = find.text(CoreStrings.clear);    

    expect(title, findsOneWidget);
    expect(description, findsOneWidget);
    expect(textField, findsNWidgets(2));
    expect(label1, findsOneWidget);
    expect(label2, findsOneWidget);
    expect(customButton, findsNWidgets(2));
    expect(calcular, findsOneWidget);
    expect(limpar, findsOneWidget);
    expect(iconReply, findsOneWidget);
    expect(iconHome, findsOneWidget);    
  });
}
