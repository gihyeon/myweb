import 'package:flutter/material.dart';
import 'package:myweb/routing/route_names.dart';

import 'navigation_bar_logo.dart';
import 'navigation_bar_item.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              NavigationBarLogo(),
              Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
                NavigationBarItem('Episodes', EpisodesRoute),
                SizedBox(
                  width: 60,
                ),
                NavigationBarItem('About', AboutRoute)
              ])
            ]));
  }
}
