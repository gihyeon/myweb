import 'package:flutter/material.dart';
import 'package:myweb/views/home/home_view.dart';
import 'locator.dart';

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
    return MaterialApp(title: 'My Website', theme: themeData, home: HomeView());
  }
}
