import 'package:exemplifica/utils/constants/core_keys.dart';
import 'package:flutter/material.dart';
import 'package:exemplifica/view/atoms/custom_appBar.dart';
import 'package:exemplifica/view/atoms/custom_icon_button.dart';

class CustomScaffold extends StatelessWidget {
  final Widget titleAppBar;
  final Widget body;
  final bool? leading;
  final List<Widget>? actions;
  const CustomScaffold({
    Key? key,
    required this.titleAppBar,
    required this.body,
    this.actions,
    this.leading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Key(CoreKeys.customScaffold),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          leading: leading == true? CustomIconButton(
            icon: Icons.reply,
            onPressed: () {
              Navigator.pop(context);
            },
          ) : SizedBox(),
          title: titleAppBar,
          actions: actions,
        ),
      ),
      body: body,
    );
  }
}
