import 'package:flutter/material.dart';
import 'package:fuck_weather/services/weather.dart';
import 'package:fuck_weather/utilities/constants.dart';

class LocationScreen extends StatefulWidget {
  final locationWeather;

  LocationScreen({this.locationWeather});

  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  WeatherModel weather = WeatherModel();
  Icon weatherIcon;
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
        weatherIcon = Icon(Icons.error);
        weatherMessage = 'Unable to get weather Data';
        return;
      }
      var condition = weatherData['weather'][0]['id'];
      weatherIcon = weather.getWeatherIcon(condition);
      condition = 800;
      weatherMessage = weather.getMessage(condition);
      listMessage = weatherMessage.split(' ');
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: weatherIcon,
              margin: EdgeInsets.all(10),
            ),
            Spacer(),
            if (listMessage.length == 4)
              Container(
                margin: EdgeInsets.only(bottom: 10, left: 20),
                child: Wrap(
                  children: [
                    Text(
                      "${listMessage[0]} ${listMessage[1]}",
                      style: kMainTextStyle,
                    ),
                    Text(
                      "${listMessage[2]}",
                      style: kMainTextStyle.copyWith(
                          color: listMessage[2] == "sunny"
                              ? Color(0xFFECA72C)
                              : Color(0xFF017EFF)),
                    ),
                    Text(
                      "${listMessage[3]}",
                      style: kMainTextStyle,
                    ),
                  ],
                ),
              )
            else if (listMessage.length == 5)
              Container()
            else if (listMessage.length == 6)
              Container()
            else if (listMessage.length == 7)
              Container()
          ],
        ),
      ),
    );
  }
}
