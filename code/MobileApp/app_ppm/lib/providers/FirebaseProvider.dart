import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';



class FirebaseProvider extends ChangeNotifier{

  /*final firestoreInstance = FirebaseFirestore.instance;


  //TODO aceder a collection no firebase


  //TODO ler do firebase para uma lista/map/etc


  //TODO pesquisar da lista anterior, os nomes dos percursos
  void getAllDataFromFirestore() {
    firestoreInstance.collection("percursos").get().then((querySnapshot) {
      querySnapshot.docs.forEach((result) {
        print(result.data());
      });
    });
  }
*/




  final _firestoreCollection = FirebaseFirestore.instance.collection('percursos');


  listViewItem(){

    return StreamBuilder(
      stream: _firestoreCollection.snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (!snapshot.hasData) { return Center( child: CircularProgressIndicator() ); }

        return ListView(
          children: snapshot.data!.docs.map((document) {
            return Container(
              child: Center(child: Text(document['title'])),
            );
          }).toList(),
        );

      },
    );

  }








  //TODO TESTING - DELETE
  xpto(){
    //notifyListeners();
    return "teste info vindo do Provider";
  }

  String _apagar = "";
  String get apagar => _apagar;
  xpto2(String index){
    return this._apagar = index;
  }

}
