import 'package:exemplifica/utils/constants/core_fontSize.dart';
import 'package:exemplifica/utils/constants/core_keys.dart';
import 'package:exemplifica/view/atoms/custom_text.dart';
import 'package:flutter/material.dart';

class ResponseCalculator extends StatelessWidget {
  final List<String> response;
  const ResponseCalculator({
    Key? key,
    required this.response,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      key: Key(CoreKeys.responseCalculator),
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: response.length,
      itemBuilder: (_, i) {
        if (response[i].isNotEmpty) {
          return ListTile(
            title: Center(
              child: CustomText(
                textAlign: TextAlign.start,
                title: response[i],
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
