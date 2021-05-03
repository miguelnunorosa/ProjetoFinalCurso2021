import 'package:flutter/material.dart';

import 'package:app_ppm/views/Home.dart';





void main() { runApp(MyApp()); }


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
