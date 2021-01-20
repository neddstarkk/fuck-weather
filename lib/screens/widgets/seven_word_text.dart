import 'package:flutter/material.dart';
import 'package:fuck_weather/utilities/constants.dart';
import 'package:fuck_weather/utilities/size_config.dart';

class SevenWordText extends StatelessWidget {
  final List<String> listMessage;

  SevenWordText({this.listMessage});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: RichText(
          text: TextSpan(children: [
            TextSpan(
              text:
                  "${listMessage[0]} ${listMessage[1]} ${listMessage[2]}\n${listMessage[3]} ",
              style: kMainTextStyle,
            ),
            TextSpan(
              text: "\n${listMessage[4]}\n",
              style: kMainTextStyle.copyWith(
                color: Colors.grey.shade400,
              ),
            ),
            TextSpan(
              text: "${listMessage[5]} ${listMessage[6]}\n",
              style: kMainTextStyle,
            ),
            TextSpan(
              text: "By little, we mean a lot",
              style: TextStyle(
                color: Color(0xFFC3C3C3),
                height: 1.5
              ),
            )
          ]),
        ));
  }
}
