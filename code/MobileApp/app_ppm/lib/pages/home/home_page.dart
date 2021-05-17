import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:app_ppm/pages/components/BackgroundImage.dart';




class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(
          children: [
            BackgroundImage(),

            Center(
              child: ListView.builder(
                padding: const EdgeInsets.all(32),
                itemCount: 30,
                itemBuilder: (BuildContext context, int index){
                  return Container(
                    height: 50,
                    color: Color.fromRGBO(0, 0, 0, 99.77),
                    
                    child: Container(
                      alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Text('Entry ${[index + 1]}',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Ubuntu',
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                            decoration: TextDecoration.none,
                          ),
                        ),
                    ),

                  );
                },
              ),
            ),



          ],
        ),
    );
  }

}
