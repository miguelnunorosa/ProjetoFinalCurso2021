import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:app_ppm/pages/components/BackgroundImage.dart';
import 'package:app_ppm/pages/components/ToastMessages.dart';




class HomePage extends StatefulWidget {


  HomePage({
    Key key
  }) : super(key: key);


  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //_HomePageState();
  final Query _forCollection = FirebaseFirestore.instance.collection("tmp-percursos");//.orderBy("codRoute", "asc");


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //TODO REVER UI
        title: Text("Percursos Pedestres"),
        backgroundColor: Colors.black,
      ),

      body: StreamBuilder(
        stream: _forCollection.orderBy("codRoute").snapshots(), //FirebaseFirestore.instance.collection('tmp-percursos').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot){

          if(snapshot.hasError){
            return Container(
              child: Stack(
                children: [
                  BackgroundImage(),
                  Text( "Ocorreu um erro. Por favor tente mais tarde." ,
                      //textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Ubuntu',
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        decoration: TextDecoration.none,
                      )
                  ),
                ],
              ),
            );
          }

          if( !snapshot.hasData ){
            return Center(
              child: CircularProgressIndicator(),
            );
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text( document['codRoute'] ,
                                      //textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 18,
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

                                  Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
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





      /*body: Container(
          child: Stack(
            children: [
              BackgroundImage(),

              Center(
                child: ListView.builder(
                  padding: const EdgeInsets.fromLTRB(16, 32, 16, 32),
                  itemCount: 30,
                  itemBuilder: (BuildContext context, int index){
                    return Container(
                      height: 100,
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
      ),*/

    );
  }

}

