import 'package:flutter/material.dart';
import 'package:fuck_weather/utilities/constants.dart';
import 'package:fuck_weather/utilities/size_config.dart';

class ThreeWordText extends StatelessWidget {
  final List<String> listMessage;

  ThreeWordText({this.listMessage});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      margin: EdgeInsets.only(
          bottom: SizeConfig.blockSizeVertical,
          left: SizeConfig.blockSizeVertical * 2),
      child: RichText(
        text: TextSpan(
            children: [
              TextSpan(
                text: "${listMessage[0]}\n${listMessage[1]}\n",
                style: kMainTextStyle,
              ),
              TextSpan(
                text: "${listMessage[2]}\n",
                style: kMainTextStyle.copyWith(
                  color: Color(0xFF9A9A9A),
                )
              ),
              TextSpan(
                text: "Clouds everywhere, so irritating",
                style: TextStyle(
                  color: Color(0xFFC3C3C3),
                  height: 1.5
                ),
              )

            ]
        ),
      ),
    );
  }
}

//
//
// fontSize: SizeConfig.blockSizeVertical * 2,
// height: SizeConfig.blockSizeVertical / 4,
// // color: Color(0xFFC3C3C3),