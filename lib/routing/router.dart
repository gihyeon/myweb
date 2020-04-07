import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myweb/routing/route_names.dart';
import 'package:myweb/views/about/about_view.dart';
import 'package:myweb/views/episodes/episodes_view.dart';
import 'package:myweb/views/home/home_view.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(HomeView());
    case AboutRoute:
      return _getPageRoute(AboutView());
    case EpisodesRoute:
      return _getPageRoute(EpisodesView());
    default:
      return _getPageRoute(HomeView());
  }
}

PageRoute _getPageRoute(Widget child) {
  return _FadeRoute(child: child);
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  _FadeRoute({this.child})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnmiation,
          ) =>
              child,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnmiation,
            Widget child,
          ) =>
              FadeTransition(opacity: animation, child: child),
        );
}
