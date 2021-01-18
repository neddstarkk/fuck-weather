import 'package:flutter/material.dart';
import 'package:fuck_weather/utilities/constants.dart';
import 'package:fuck_weather/utilities/size_config.dart';

class SevenWordText extends StatelessWidget {
  final List<String> listMessage;

  SevenWordText({this.listMessage});

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
            "${listMessage[0]} ${listMessage[1]}",
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
            ),
          ),
          Text(
            "${listMessage[3]}",
            style: kMainTextStyle.copyWith(
              height: SizeConfig.blockSizeVertical / 12,
              fontSize: SizeConfig.blockSizeVertical * 9,
            ),
          ),
          Text(
            "${listMessage[4]}",
            style: kMainTextStyle.copyWith(
              color: Colors.grey.shade400,
              height: SizeConfig.blockSizeVertical / 12,
              fontSize: SizeConfig.blockSizeVertical * 9,
            ),
          ),
          Text(
            "${listMessage[5]} ${listMessage[6]}",
            style: kMainTextStyle.copyWith(
              height: SizeConfig.blockSizeVertical / 12,
              fontSize: SizeConfig.blockSizeVertical * 9,
            ),
          ),
          Text(
            "By little, we mean a lot",
            style: TextStyle(
              fontSize: SizeConfig.blockSizeVertical * 2,
              height: SizeConfig.blockSizeVertical / 5,
              color: Color(0xFFC3C3C3),
            ),
          )
        ],
      ),
    );
  }
}
