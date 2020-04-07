import 'package:flutter/material.dart';
import 'package:myweb/locator.dart';
import 'package:myweb/services/navigation_service.dart';

class NavigationBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  const NavigationBarItem(this.title, this.navigationPath);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Don't use a service directly in the UI to change any kind of state.
        // Services should only be used from a viewmodel.
        locator<NavigationService>().navigateTo(navigationPath);
      },
      child: Text(
        title,
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
