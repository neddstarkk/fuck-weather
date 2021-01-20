import 'package:flutter/material.dart';
import 'package:fuck_weather/utilities/constants.dart';
import 'package:fuck_weather/utilities/size_config.dart';

class SixWordText extends StatelessWidget {
  final List<String> listMessage;

  SixWordText({this.listMessage});

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
              text: listMessage[0] == 'Freezing'
                  ? "${listMessage[0]}\n"
                  : "${listMessage[0]} ${listMessage[1]}\n",
              style: kMainTextStyle,
            ),
            TextSpan(
              text: listMessage[1] == "cold"
                  ? "${listMessage[1]}\n"
                  : "${listMessage[2]}\n",
              style: kMainTextStyle.copyWith(color: Color(0xFF2478B9)),
            ),
            TextSpan(
              text: listMessage[1] == "cold"
                  ? "${listMessage[2]} ${listMessage[3]}\n"
                  : "${listMessage[3]}\n",
              style: listMessage[3] == "storm"
                  ? kMainTextStyle.copyWith(
                      color: Color(0xFF8C7494),
                    )
                  : kMainTextStyle,
            ),
            TextSpan(
              text: "${listMessage[4]} ${listMessage[5]}\n",
              style: kMainTextStyle,
            ),
            TextSpan(
                text: listMessage[3] == "storm"
                    ? "But hey, at least it can\'t get any worse"
                    : "No offence to your fridge",
                style: TextStyle(
                  color: Color(0xFFC3C3C3),
                  height: 1.5,
                )),
          ],
        ),
      ),
    );
  }
}
