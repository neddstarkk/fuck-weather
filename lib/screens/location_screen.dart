import 'package:flutter/material.dart';
import 'package:fuck_weather/screens/widgets/seven_word_text.dart';
import 'package:fuck_weather/screens/widgets/six_word_text.dart';
import 'package:fuck_weather/screens/widgets/four_word_text.dart';
import 'package:fuck_weather/screens/widgets/three_word_text.dart';
import 'package:fuck_weather/services/weather.dart';
import 'package:fuck_weather/utilities/size_config.dart';

class LocationScreen extends StatefulWidget {
  final locationWeather;

  LocationScreen({this.locationWeather});

  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  WeatherModel weather = WeatherModel();
  IconData weatherIcon;
  String weatherMessage;
  List<String> listMessage;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    updateUI(widget.locationWeather);
  }

  void updateUI(dynamic weatherData) {
    setState(() {
      if (weatherData == null) {
        weatherIcon = Icons.error;
        weatherMessage = 'Unable to get weather Data';
        return;
      }
      var condition = weatherData['weather'][0]['id'];
      condition = 700;
      weatherIcon = weather.getWeatherIcon(condition);
      weatherMessage = weather.getMessage(condition);
      listMessage = weatherMessage.split(' ');
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Icon(
                weatherIcon,
                size: SizeConfig.blockSizeVertical * 10,
              ),
              margin: EdgeInsets.all(SizeConfig.blockSizeVertical),
            ),
            if (listMessage.length == 3)
              ThreeWordText(
                listMessage: listMessage,
              )
            else if (listMessage.length == 4)
              FourWordText(
                listMessage: listMessage,
              )
            else if (listMessage.length == 6)
              SixWordText(
                listMessage: listMessage,
              )
            else if (listMessage.length == 7)
              SevenWordText(
                listMessage: listMessage,
              )
          ],
        ),
      ),
    );
  }
}
