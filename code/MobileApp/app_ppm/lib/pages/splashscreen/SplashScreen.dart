import 'dart:ui';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:app_ppm/pages/components/BackgroundImage.dart';
import 'package:app_ppm/pages/home/home_page.dart';




class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final _splashDelay = 5; //value (time) in seconds

  @override
  void initState() {
    super.initState();

    _loadScreen();
  }

  _loadScreen() async {
    var _duration = Duration(seconds: _splashDelay);
    WidgetsFlutterBinding.ensureInitialized();

    await Firebase.initializeApp();

    return Timer(_duration, _navigateToPage);
  }

  void _navigateToPage() {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (BuildContext context) => HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    //TODO rever UI
    return Container(
      //color: Colors.black,
      child: Stack(
        children: [
          //background Image
          BackgroundImage(),

          Positioned(
            bottom: 201,
            left: 50,
            child: Container(
              child: Icon(Icons.directions_walk, size: 95, color: Colors.white),
            ),
          ),

          //text PERCURSOS
          Positioned(
            bottom: 200,
            left: 116,
            child: Stack(
              children: [
                SizedBox(
                  child: Text(
                    "PERCURSOS",
                    style: TextStyle(
                      color: Color(0xffffdc25),
                      fontSize: 44,
                      fontFamily: "Ubuntu",
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),

          //text PEDESTRES
          Positioned(
            bottom: 155,
            left: 55,
            child: Stack(
              children: [
                SizedBox(
                  child: Text(
                    "PEDESTRES",
                    style: TextStyle(
                      color: Color(0xffff4c25),
                      fontSize: 60,
                      fontFamily: "Ubuntu",
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),

          Positioned(
            bottom: 100,
            child: Container(),
          ),


        ],
      ),
    );
  }
}
