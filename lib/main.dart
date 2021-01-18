import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF8F8FF),
      ),
    );
  }
}
