import 'dart:ui';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:app_ppm/views/Home.dart';

import 'package:firebase_core/firebase_core.dart';

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
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (BuildContext context) => Home()));
  }

  @override
  Widget build(BuildContext context) {
    //TODO rever UI
    return Container(
      //color: Colors.black,
      child: Stack(
        children: [
          //background Image
          Image(
            image: AssetImage('assets/img/app_background.png'),
            fit: BoxFit.cover,
            width: double.maxFinite,
            height: double.maxFinite,
            alignment: Alignment.topCenter,
          ),

          //icon walk
          Positioned(
            top: 451,
            child: Container(
              width: 102,
              height: 102,
              child:
                  Icon(Icons.directions_walk, size: 150, color: Colors.white),
            ),
          ),

          //text PERCURSOS
          Positioned(
            left: 130,
            top: 512,
            child: Stack(
              children: [
                SizedBox(
                  child: Text( "PERCURSOS",
                    style: TextStyle(
                      color: Color(0xffffdc25),
                      fontSize: 45,
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
            left: 110,
            top: 555,
            child: Stack(
              children: [
                SizedBox(
                  child: Text( "PEDESTRES",
                    style: TextStyle(
                      color: Color(0xffff4c25),
                      fontSize: 52,
                      fontFamily: "Ubuntu",
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),

          //Circular Progress Indicator
          Positioned(
            top: 620,
            left: 150,
            child: CircularProgressIndicator(
              backgroundColor: Colors.white,
            ),
          ),

        ],
      ),
    );
  }
}
