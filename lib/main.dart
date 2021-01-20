import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'screens/loading_screen.dart';

void main() => runApp( DevicePreview(builder: (context) => App()));

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: DevicePreview.appBuilder,
      home: LoadingScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        scaffoldBackgroundColor: Color(0xFFF8F8FF),
      ),
    );
  }
}
