import 'package:flutter/material.dart';
import 'package:fuck_weather/utilities/constants.dart';
import 'package:fuck_weather/utilities/size_config.dart';

class FourWordText extends StatelessWidget {
  final List<String> listMessage;

  FourWordText({this.listMessage});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      margin: EdgeInsets.only(
          bottom: SizeConfig.blockSizeVertical,
          left: SizeConfig.blockSizeVertical * 2),
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
            text: "${listMessage[0]}\n${listMessage[1]}",
            style: kMainTextStyle,
          ),
          TextSpan(
            text: "\n${listMessage[2]}\n",
            style: listMessage[2] == "sunny"
                ? kMainTextStyle.copyWith(
                    color: Color(0xFFECA72C),
                  )
                : kMainTextStyle.copyWith(
                    color: Color(0xFF017EFF),
                  ),
          ),
          TextSpan(text: "${listMessage[3]}\n", style: kMainTextStyle),
          TextSpan(
            text: listMessage[2] == 'sunny'
                ? "Fucking love is in the air rn"
                : listMessage[2] == 'drizzling'
                    ? "That icon up there are rain drops you cum slut"
                    : "You can look outside to see for yourself",
            style: TextStyle(
              height: 1.5,
              color: Color(0xFFC3C3C3),
            ),
          ),
        ]),
      ),
    );
  }
}

// Color(0xFFC3C3C3)
// "Just enough to ruin your day"
//
