import 'package:exemplifica/model/assets_model.dart';
import 'package:exemplifica/utils/enum_calculator.dart';
import 'package:exemplifica/view/page/home_page.dart';
import 'package:exemplifica/view/templates/page_template.dart';
import 'package:flutter/material.dart';
import 'package:exemplifica/utils/constants/core_fontSize.dart';
import 'package:exemplifica/view/atoms/custom_icon_button.dart';
import 'package:exemplifica/view/atoms/custom_text.dart';
import 'package:exemplifica/view/molecules/custom_scaffold.dart';

class ContentPage extends StatelessWidget {
  final List<StringsAndAssetsModel> contentList;
  final String titleAppBar;
  final IconData? icon;
  final dynamic route;
  final CalculatorEnum? calculator;
  const ContentPage({
    Key? key,
    required this.contentList,
    required this.titleAppBar,
    this.icon,
    this.route,
    this.calculator,
  }) : super(key: key);

  static const routeName = '/contentPage';

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return CustomScaffold(
      titleAppBar: CustomText(
        title: titleAppBar,
        fontSize: CoreFontSize.h_22,
      ),
      leading: true,
      actions: [
        CustomIconButton(
          icon: icon?? Icons.home,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => route?? HomePage()));            
          },
        ),
      ],
      body: PageTemplate(
        width: width,
        height: height,
        stringsAndAssetsList: contentList,
      ),
    );
  }
}
