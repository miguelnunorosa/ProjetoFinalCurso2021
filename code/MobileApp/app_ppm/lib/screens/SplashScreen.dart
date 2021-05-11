import 'dart:ui';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:app_ppm/screens/Home.dart';

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

    //_loadScreen();
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
          //alignment: Alignment.center,
        children: [
          //background Image
          Image(
            image: AssetImage('assets/img/app_background.png'),
            fit: BoxFit.cover,
            filterQuality: FilterQuality.medium,
            width: double.maxFinite,
            height: double.maxFinite,
            alignment: Alignment.topCenter,
          ),

          //icon walk
          Positioned(
            bottom: 201,
            left: 50,
            child: Container(
              child:
                  Icon(Icons.directions_walk, size: 95, color: Colors.white),
            ),
          ),

          //text PERCURSOS
          Positioned(
            bottom: 200,
            left: 116,
            child: Stack(
              children: [
                SizedBox(
                  child: Text( "PERCURSOS",
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
            bottom: 150,
            left: 40,
            right: 40,
            child: Stack(
              children: [
                SizedBox(
                  child: Text( "PEDESTRES",
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

          //Circular Progress Indicator
          Positioned(
            bottom: 100,
            left: 190,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircularProgressIndicator(
                  backgroundColor: Colors.white,
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
