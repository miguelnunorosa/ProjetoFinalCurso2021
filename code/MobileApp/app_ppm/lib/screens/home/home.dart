import 'package:app_ppm/components/BackgroundImage.dart';
import 'package:app_ppm/providers/firebaseProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:app_ppm/utils/routes.dart' as my_routes;



class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider(
        create: (BuildContext context) {
          return firebaseProvider();
        },
        child: Container(
          //padding: const EdgeInsets.all(8),
          //color: Colors.grey,
          child: Stack(
            children: [
              BackgroundImage(),

              Center(
                child: ListView.builder(
                  padding: const EdgeInsets.fromLTRB(16, 32, 16, 0),
                  itemCount: 20,
                  itemBuilder: (context, index){
                    return Container(
                      height: 90,
                      width: double.maxFinite,
                      child: GestureDetector(
                        child: Card(
                          elevation: 2,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Column(
                                children: [
                                  Text("${Provider.of<firebaseProvider>(context, listen: false).xpto2((index + 1).toString())}" + " . " + "${Provider.of<firebaseProvider>(context).xpto()}",
                                    style: TextStyle(
                                      fontFamily: 'Ubuntu',
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                    ),)
                                ],
                              ),
                            ],
                          ),
                        ),
                        //action for GestureDetector
                        onTap: (){
                          print("app: " + "${Provider.of<firebaseProvider>(context, listen: false).xpto2((index + 1).toString())}" );
                        },
                      ),
                    );
                  },
                ),
              ),

            ],
          ),
        ),
      ),

    );
  }
}
