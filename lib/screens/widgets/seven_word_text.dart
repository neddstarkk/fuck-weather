import 'package:flutter/material.dart';
import 'package:fuck_weather/utilities/constants.dart';

class SevenWordText extends StatelessWidget {
  final List<String> listMessage;

  SevenWordText({this.listMessage});

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
            style: kMainTextStyle,
          ),
          Text(
            "${listMessage[3]}",
            style: kMainTextStyle,
          ),
          Text(
            "${listMessage[4]}",
            style: kMainTextStyle.copyWith(color: Colors.grey.shade400),
          ),
          Text(
            "${listMessage[5]} ${listMessage[6]}",
            style: kMainTextStyle,
          ),
          Text(
            "By little, we mean a lot",
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
