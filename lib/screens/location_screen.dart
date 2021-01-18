import 'package:flutter/material.dart';
import 'package:fuck_weather/screens/widgets/six_word_text.dart';
import 'package:fuck_weather/screens/widgets/four_word_text.dart';
import 'package:fuck_weather/screens/widgets/three_word_text.dart';
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
      condition = 230;
      weatherMessage = weather.getMessage(condition);
      listMessage = weatherMessage.split(' ');
      print(listMessage);
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
            if (listMessage.length == 3)
              ThreeWordText(listMessage: listMessage,)
            else if (listMessage.length == 4)
              FourWordText(listMessage: listMessage,)
            else if (listMessage.length == 6)
                SixWordText(listMessage: listMessage,)
            else if (listMessage.length == 7)
              Container()
          ],
        ),
      ),
    );
  }
}
