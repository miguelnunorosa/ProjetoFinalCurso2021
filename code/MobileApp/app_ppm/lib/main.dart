import 'package:app_ppm/views/Home.dart';
import 'package:flutter/material.dart';





void main() { runApp(MyApp()); }


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
