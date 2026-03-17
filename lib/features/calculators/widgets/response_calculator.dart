import 'package:exemplifica/core/constants/core_fontSize.dart';
import 'package:exemplifica/core/ui/widgets/text_custom.dart';
import 'package:exemplifica/features/calculators/models/calculator_response.dart';
import 'package:flutter/material.dart';

class ResponseCalculator extends StatelessWidget {
  final CalculatorResponse response;
  const ResponseCalculator({
    Key? key,
    required this.response,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final items = [
      response.result,
      response.tip,
    ];

    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (_, i) {
        if (items[i].isNotEmpty) {
          return ListTile(
            title: Center(
              child: TextCustom(
                textAlign: TextAlign.start,
                text: items[i],
                fontSize: CoreFontSize.h_18,
              ),
            ),
          );
        } 
        return SizedBox();
      },
    );
  }
}
