import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fuck_weather/screens/loading_screen.dart';
import 'package:fuck_weather/utilities/size_config.dart';

class ErrorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
              child: Icon(
            Icons.error,
            size: 70,
          )),
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: SizeConfig.blockSizeHorizontal * 5),
            child: Text(
              "Hello\nApparently you're living without the internet in this day and age.\nHow about you press the button below after you connect to the internet?",
              textAlign: TextAlign.center,
            ),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pushReplacement(context, CupertinoPageRoute(builder: (context) => LoadingScreen()));
            },
            child: Text("Retry"),
          )
        ],
      ),
    );
  }
}
