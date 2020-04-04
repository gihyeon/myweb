import 'package:flutter/material.dart';

class NavigationBarItem extends StatelessWidget {
  final String title;
  const NavigationBarItem(this.title, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(title, style: TextStyle(fontSize: 18));
  }
}
