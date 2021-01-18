import 'package:flutter/material.dart';
import 'package:fuck_weather/services/weather.dart';

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
      weatherMessage = weather.getMessage(condition);
      listMessage = weatherMessage.split(' ');
      print(listMessage);
      weatherIcon = weather.getWeatherIcon(condition);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: weatherIcon,
              margin: EdgeInsets.all(10),
            ),
            if(listMessage.length == 4) Container()
            else if (listMessage.length == 5) Container()
            else if (listMessage.length == 6) Container()
            else if (listMessage.length == 7) Container()

          ],
        ),
      ),
    );
  }
}
