import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      var textAlignment =
          sizingInformation.deviceScreenType == DeviceScreenType.Desktop
              ? TextAlign.left
              : TextAlign.center;
      double titleSize =
          sizingInformation.deviceScreenType == DeviceScreenType.Mobile
              ? 45
              : 80;
      double descriptionSize =
          sizingInformation.deviceScreenType == DeviceScreenType.Mobile
              ? 18
              : 21;
      return Container(
          width: 600,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '테크 용어 사전 완전 초보용',
                  style: TextStyle(
                    fontFamily: 'Nanum Barunpen',
                    fontWeight: FontWeight.w800,
                    fontSize: titleSize,
                    height: 1.2,
                  ),
                  textAlign: textAlignment,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                    '이해하기 어려운 IT 용어를 쉽고 재밌게 설명한다.' +
                        ' VC, IT기업 투자자 등의 일반인들도 쉽게 이해할 수 있도록.',
                    style: TextStyle(
                        fontFamily: 'Nanum Barunpen',
                        fontSize: descriptionSize,
                        height: 1.7))
              ]));
    });
  }
}
