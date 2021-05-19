import 'package:app_ppm/pages/components/MainLateralMenu.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:app_ppm/pages/components/BackgroundImage.dart';
import 'package:app_ppm/pages/components/CustomErrorWidget.dart';
import 'package:app_ppm/pages/components/ToastMessages.dart';




class HomePage extends StatefulWidget {


  HomePage({
    Key key
  }) : super(key: key);


  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  _HomePageState();
  final Query _forCollection = FirebaseFirestore.instance.collection("percursos");//.orderBy("codRoute", "asc");


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //TODO REVER UI
        title: Text("Percursos Pedestres"),
        backgroundColor: Colors.black,
      ),

      body: StreamBuilder(
        stream: _forCollection.snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot){

          if(snapshot.hasError){
            return Stack(
              children: [
                BackgroundImage(),
                Center( child: CustomErrorWidget() ),
              ],
            );
          }

          if( !snapshot.hasData ){
            return Center( child: CircularProgressIndicator() );
          }else{
            return Container(
              child: Stack(
                children: [
                  BackgroundImage(),

                  Center(
                    child: ListView(
                      padding: EdgeInsets.fromLTRB(16, 32, 16, 0),
                      children: snapshot.data.docs.map((document) {
                        return Container(
                          width: MediaQuery.of(context).size.width / 1.2,
                          height: MediaQuery.of(context).size.height / 8,
                          child: GestureDetector(
                            child: Card(
                              elevation: 2,
                              color: Colors.transparent,

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text( document.id ,
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontFamily: 'Ubuntu',
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white,
                                        decoration: TextDecoration.none,
                                      )
                                  ),

                                  Text( document['title'] ,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontFamily: 'Ubuntu',
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        decoration: TextDecoration.none,
                                      )
                                  ),
                                ],
                              )

                            ),
                            onTap: (){
                              //TODO CREATE OPEN PAGE WITH DATA
                              ToastMessages().showToast("Selected Route: \n \"" + document['title'].toString() + "\" ");
                            },
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            );
          }
        },
      ),

      drawer: MainLateralMenu(),
      
    );
  }

}

