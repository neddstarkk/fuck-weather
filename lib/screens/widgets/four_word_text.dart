import 'package:flutter/material.dart';
import 'package:fuck_weather/utilities/constants.dart';

class FourWordText extends StatelessWidget {
  final List<String> listMessage;

  FourWordText({this.listMessage});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10, left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "${listMessage[0]} ${listMessage[1]}",
            style: kMainTextStyle,
          ),
          Text(
            "${listMessage[2]}",
            style: kMainTextStyle.copyWith(
                color: listMessage[2] == "sunny"
                    ? Color(0xFFECA72C)
                    : Color(0xFF017EFF)),
          ),
          Text(
            "${listMessage[3]}",
            style: kMainTextStyle,
          ),
          if(listMessage[2] == 'sunny') Text(
            "The glowy orb should be visible",
            style: TextStyle(
              fontSize: 20,
              height: 2.0,
              color: Color(0xFFC3C3C3),
            ),
          )
          else if (listMessage[2] == "drizzling") Text(
            "Just enough to ruin your day",
            style: TextStyle(
              fontSize: 20,
              height: 2.0,
              color: Color(0xFFC3C3C3),
            ),
          )
          else Text(
              "You can look outside to see for yourself",
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
