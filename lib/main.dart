import 'package:flutter/material.dart';
import 'package:myweb/locator.dart';
import 'package:myweb/views/layout_template/layout_template.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var themeData = ThemeData(
        primarySwatch: Colors.blue,
        textTheme: Theme.of(context).textTheme.apply(
              fontFamily: 'Nanum Barun Gothic',
            ));
    return MaterialApp(
        title: 'My Website', theme: themeData, home: LayoutTemplate());
  }
}
