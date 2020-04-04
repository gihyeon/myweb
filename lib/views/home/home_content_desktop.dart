import 'package:flutter/material.dart';
import 'package:myweb/widgets/call_to_action/call_to_action.dart';
import 'package:myweb/widgets/course_details/course_details.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      CourseDetails(),
      Expanded(child: Center(child: CallToAction('학습하기')))
    ]);
  }
}
