import 'package:exemplifica/utils/constants/core_keys.dart';
import 'package:exemplifica/utils/constants/core_strings.dart';
import 'package:exemplifica/utils/enum_calculator.dart';
import 'package:exemplifica/view/page/calculator_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets("Teste de Widgtes com calculadora de Juros Simples",
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: CalculatorPage(
        calculator: CalculatorEnum.jurosSimples,
        titleAppBar: CoreStrings.titleJurosSimples,
        descriptionText: CoreStrings.text1_CalcJurosSimples,
      ),
    ));

    final title = find.text(CoreStrings.titleJurosSimples);
    final iconReply = find.byIcon(Icons.reply);
    final iconHome = find.byIcon(Icons.home);
    final description = find.text(CoreStrings.text1_CalcJurosSimples);
    final textField = find.byKey(Key(CoreKeys.textFieldInput));
    final label1 = find.text("Capital:");
    final label2 = find.text("Taxa:");
    final label3 = find.text("Meses:");
    final label4 = find.text("Juros:");
    final customButton = find.byKey(Key(CoreKeys.customButton));
    final calcular = find.text(CoreStrings.calc);
    final limpar = find.text(CoreStrings.clear);    

    expect(title, findsOneWidget);
    expect(description, findsOneWidget);
    expect(textField, findsNWidgets(4));
    expect(label1, findsOneWidget);
    expect(label2, findsOneWidget);
    expect(label3, findsOneWidget);
    expect(label4, findsOneWidget);
    expect(customButton, findsNWidgets(2));
    expect(calcular, findsOneWidget);
    expect(limpar, findsOneWidget);
    expect(iconReply, findsOneWidget);
    expect(iconHome, findsOneWidget);    
  });
}
