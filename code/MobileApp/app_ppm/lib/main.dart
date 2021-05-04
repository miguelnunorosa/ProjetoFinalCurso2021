import 'package:flutter/material.dart';

import 'package:app_ppm/views/SplashScreen.dart';
import 'package:flutter/services.dart';





void main() { runApp(MyApp()); }


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    SystemChrome.setEnabledSystemUIOverlays ([]);   // to make fullscreen

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
