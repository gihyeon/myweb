import 'package:flutter/material.dart';
import 'package:myweb/constants/app_colors.dart';

class CallToActionMobile extends StatelessWidget {
  final title;
  const CallToActionMobile(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      alignment: Alignment.center,
      child: Text(
        title,
        style: TextStyle(
            fontSize: 21, fontWeight: FontWeight.w600, color: Colors.white),
      ),
      decoration: BoxDecoration(
          color: primaryColor, borderRadius: BorderRadius.circular(5)),
    );
  }
}
