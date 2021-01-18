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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "${listMessage[0]}",
            style: kMainTextStyle.copyWith(
              height: SizeConfig.blockSizeVertical / 12,
              fontSize: SizeConfig.blockSizeVertical * 9,
            ),
          ),
          Text(
            "${listMessage[1]}",
            style: kMainTextStyle.copyWith(
              height: SizeConfig.blockSizeVertical / 12,
              fontSize: SizeConfig.blockSizeVertical * 9,
            ),
          ),
          Text(
            "${listMessage[2]}",
            style: kMainTextStyle.copyWith(
              height: SizeConfig.blockSizeVertical / 12,
              fontSize: SizeConfig.blockSizeVertical * 9,
              color: Color(0xFF9A9A9A),
            ),
          ),
          Text(
            "Clouds everywhere",
            style: TextStyle(
              fontSize: SizeConfig.blockSizeVertical * 2,
              height: SizeConfig.blockSizeVertical / 4,
              color: Color(0xFFC3C3C3),
            ),
          )
        ],
      ),
    );
  }
}
