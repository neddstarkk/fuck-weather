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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "${listMessage[0]} \n${listMessage[1]}",
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
                color: listMessage[2] == "sunny"
                    ? Color(0xFFECA72C)
                    : Color(0xFF017EFF)),
          ),
          Text(
            "${listMessage[3]}",
            style: kMainTextStyle.copyWith(
              height: SizeConfig.blockSizeVertical / 12,
              fontSize: SizeConfig.blockSizeVertical * 9,),
          ),
          if (listMessage[2] == 'sunny')
            Text(
              "The glowy orb should be visible",
              style: TextStyle(
                fontSize: SizeConfig.blockSizeVertical * 2,
                height: SizeConfig.blockSizeVertical / 4,
                color: Color(0xFFC3C3C3),
              ),
            )
          else if (listMessage[2] == "drizzling")
            Text(
              "Just enough to ruin your day",
              style: TextStyle(
                fontSize: SizeConfig.blockSizeVertical * 2,
                height: SizeConfig.blockSizeVertical / 4,
                color: Color(0xFFC3C3C3),
              ),
            )
          else
            Text(
              "You can look outside to see for yourself",
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
