import 'package:flutter/material.dart';
import 'package:fuck_weather/services/location.dart';
import 'package:geolocator/geolocator.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<dynamic> getLocation() async {
    Location location = Location();
    await location.getCurrentLocation();

    print("Lat: ${location.latitude}, Long: ${location.longitude}");
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(""),
      ),
    );
  }
}
