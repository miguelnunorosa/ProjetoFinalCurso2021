import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]); // to make fullscreen

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
                  child: Text("PERCURSOS",
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
                  child: Text("PEDESTRES",
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

        ],
      ),
    );
  }
}
