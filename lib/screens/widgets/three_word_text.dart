import 'package:flutter/material.dart';
import 'package:fuck_weather/utilities/constants.dart';

class ThreeWordText extends StatelessWidget {
  final List<String> listMessage;

  ThreeWordText({this.listMessage});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10, left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "${listMessage[0]}",
            style: kMainTextStyle,
          ),
          Text(
            "${listMessage[1]}",
            style: kMainTextStyle,
          ),
          Text(
            "${listMessage[2]}",
            style: kMainTextStyle.copyWith(color: Color(0xFF9A9A9A)),
          ),
          Text(
            "Clouds everywhere",
            style: TextStyle(
              fontSize: 20,
              height: 2.0,
              color: Color(0xFFC3C3C3),
            ),
          )
        ],
      ),
    );
  }
}
