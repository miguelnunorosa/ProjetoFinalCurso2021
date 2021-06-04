import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';



class firebaseProvider extends ChangeNotifier{

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
