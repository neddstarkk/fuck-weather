import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fuck_weather/services/location.dart';
import 'package:fuck_weather/services/networking.dart';
import 'package:fuck_weather/utilities/size_config.dart';
import 'package:weather_icons/weather_icons.dart';

const apiKey = '265c27f1819e714e8297ccb54c8ad155';
const openWeatherMapUrl = 'https://api.openweathermap.org/data/2.5/weather';

class WeatherModel {
  Future<dynamic> getLocationWeather() async {
    Location location = Location();
    await location.getCurrentLocation();

    NetworkHelper networkHelper = NetworkHelper(
        url:
            "$openWeatherMapUrl?lat=${location.latitude}&lon=${location.longitude}&appid=$apiKey&units=metric");

    var weatherData = await networkHelper.getData();
    return weatherData;
  }

  IconData getWeatherIcon(int condition) {
    if (condition < 300) {
      return WeatherIcons.thunderstorm;
    } else if (condition < 400) {
      return WeatherIcons.raindrops;
    } else if (condition < 600) {
      return WeatherIcons.rain;
    } else if (condition < 700) {
      return WeatherIcons.snowflake_cold;
    } else if (condition < 800) {
      return WeatherIcons.fog;
    } else if (condition == 800) {
      return WeatherIcons.day_sunny;
    } else if (condition <= 804) {
      return WeatherIcons.cloudy;
    } else {
      return Icons.error;
    }
  }

  String getMessage(int condition) {
    if (condition < 300) {
      return 'It\'s a fucking storm out there';
    } else if (condition < 400) {
      return 'It\'s fucking drizzling now';
    } else if (condition < 600) {
      return 'It\'s fucking raining now';
    } else if (condition < 700) {
      return 'Freezing cold like a fucking fridge';
    } else if (condition < 800) {
      return 'It\'s a little fucking hazy right now';
    } else if (condition == 800) {
      return 'It\'s fucking sunny now';
    } else if (condition <= 804) {
      return 'Just fucking grey';
    } else {
      return '';
    }
  }
}
