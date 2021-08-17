import 'package:flutter/material.dart';

class PageTile extends StatelessWidget {
  PageTile({this.label, this.iconData, this.onTap, this.highlighted});

  final String label;
  final IconData iconData;
  final VoidCallback onTap;
  final bool highlighted;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        label,
        style: TextStyle(
          color: highlighted ? Colors.blueAccent: Colors.black, fontSize: 18,
        ),
      ),
      leading: Icon(
        iconData,
        color: highlighted ? Colors.blueAccent: Colors.black,
      ),
      onTap: onTap,
    );
  }
}



