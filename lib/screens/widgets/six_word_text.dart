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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (listMessage[0] == "Freezing")
            Text(
              "${listMessage[0]}",
              style: kMainTextStyle.copyWith(
                height: SizeConfig.blockSizeVertical / 12,
                fontSize: SizeConfig.blockSizeVertical * 9,
              ),
            )
          else
            Text(
              "${listMessage[0]} ${listMessage[1]}",
              style: kMainTextStyle.copyWith(
                height: SizeConfig.blockSizeVertical / 12,
                fontSize: SizeConfig.blockSizeVertical * 9,
              ),
            ),
          if (listMessage[1] == "cold")
            Text(
              "${listMessage[1]}",
              style: kMainTextStyle.copyWith(
                color: Color(0xFF2478B9),
                height: SizeConfig.blockSizeVertical / 12,
                fontSize: SizeConfig.blockSizeVertical * 9,
              ),
            )
          else
            Text(
              "${listMessage[2]}",
              style: kMainTextStyle.copyWith(
                height: SizeConfig.blockSizeVertical / 12,
                fontSize: SizeConfig.blockSizeVertical * 9,
              ),
            ),
          if (listMessage[2] == "like")
            Text(
              "${listMessage[2]} ${listMessage[3]}",
              style: kMainTextStyle.copyWith(
                height: SizeConfig.blockSizeVertical / 12,
                fontSize: SizeConfig.blockSizeVertical * 9,
              ),
            ),
          if (listMessage[3] == "storm")
            Text(
              "${listMessage[3]}",
              style: kMainTextStyle.copyWith(
                color: Color(0xFF8C7494),
                height: SizeConfig.blockSizeVertical / 12,
                fontSize: SizeConfig.blockSizeVertical * 9,
              ),
            ),
          Text(
            "${listMessage[4]}",
            style: kMainTextStyle.copyWith(
              height: SizeConfig.blockSizeVertical / 12,
              fontSize: SizeConfig.blockSizeVertical * 9,
            ),
          ),
          Text(
            "${listMessage[5]}",
            style: kMainTextStyle.copyWith(
              height: SizeConfig.blockSizeVertical / 12,
              fontSize: SizeConfig.blockSizeVertical * 9,),
          ),
          if (listMessage[0] == "Freezing")
            Text(
              "No offence to your fridge",
              style: TextStyle(
                fontSize: SizeConfig.blockSizeVertical * 2,
                height: SizeConfig.blockSizeVertical / 4,
                color: Color(0xFFC3C3C3),
              ),
            )
          else
            Text(
              "But hey, at least it cant\'t get any worse",
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
