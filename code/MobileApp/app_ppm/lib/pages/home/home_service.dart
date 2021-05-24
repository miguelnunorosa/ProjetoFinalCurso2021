import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HomeProvider extends InheritedWidget {
  HomeProvider({Key key, this.child}) : super(key: key, child: child);

  final Widget child;
  final String _prTitle = "";
  final Query _prTitleList = FirebaseFirestore.instance.collection("percurso");

  Stream<QuerySnapshot<Map<String, dynamic>>> _prTitleList(){
    return _prTitleList.snapshots();
  }



  /*
  Stream<QuerySnapshot<Map<String, dynamic>>> prList() {
    return FirebaseFirestore.instance.collection("percursos").snapshots(); //.orderBy("codRoute");

  } */

  static HomeProvider of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<HomeProvider>();
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }
}
