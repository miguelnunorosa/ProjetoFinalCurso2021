import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(
          children:[
            Positioned.fill(
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  width: 1714,
                  height: 964,
                  padding: const EdgeInsets.only(left: 978, right: 325, top: 130, bottom: 103, ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children:[
                      Container(
                        width: 411,
                        height: 731,
                        child: Stack(
                          children: [
                            Positioned.fill(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:[
                                  Container(
                                    width: 411,
                                    height: 731,
                                    color: Color(0xaa000000),
                                  ),
                                ],
                              ),
                            ),
                            Positioned.fill(
                              child: FlutterLogo(size: 411),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //loading progress circle
            Positioned(
              left: 195,
              top: 624,
              child: Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: FlutterLogo(size: 48),
              ),
            ),
            //icon walk
            Positioned(
              left: 19,
              top: 495,
              child: Container(
                width: 102,
                height: 102,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(Icons.directions_walk, size: 104)
              ),
            ),
            Positioned(
              left: 104,
              top: 517,
              child: Container(
                width: 364,
                height: 93,
                child: Stack(
                  children:[
                    Positioned.fill(
                      child: Align(
                        alignment: Alignment.topRight,
                        child: SizedBox(
                          width: 343,
                          height: 55,
                          child: Text("PERCURSOS",
                            style: TextStyle(
                              color: Color(0xffffdc25),
                              fontSize: 45,
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned.fill(
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: SizedBox(
                          width: 343,
                          height: 55,
                          child: Text("PEDESTRES",
                            style: TextStyle(
                              color: Color(0xffff4c25),
                              fontSize: 52,
                              fontFamily: "Roboto",
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
