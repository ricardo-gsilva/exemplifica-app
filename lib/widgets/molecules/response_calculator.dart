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
      shrinkWrap: true,
      itemCount: response.length,
      itemBuilder: (_, i) {
        if (response[i].isNotEmpty) {
          return ListTile(
            title: Center(
              child: CustomText(
                textAlign: TextAlign.start,
                title: response[i],
                fontSize: 18,
              ),
            ),
          );
        } 
        return SizedBox();
      },
    );
  }
}
