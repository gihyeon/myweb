import 'package:flutter/material.dart';
import 'package:myweb/constants/app_colors.dart';

class CallToActionTabletDesktop extends StatelessWidget {
  final String title;
  const CallToActionTabletDesktop(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
        child: Text(
          title,
          style: TextStyle(
              fontSize: 21, fontWeight: FontWeight.w600, color: Colors.white),
        ),
        decoration: BoxDecoration(
            color: primaryColor, borderRadius: BorderRadius.circular(5)));
  }
}
