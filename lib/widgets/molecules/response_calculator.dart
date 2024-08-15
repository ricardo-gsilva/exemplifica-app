import 'package:exemplifica/widgets/atoms/custom_text.dart';
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
      physics: NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: response.length,
      itemBuilder: (_, i) {
        return ListTile(
          title: CustomText(
            title: response[i],
            textAlign: TextAlign.center,
            fontSize: 18,
          ),
        );
      },
    );
  }
}
