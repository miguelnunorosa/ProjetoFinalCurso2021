import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';




class RouteProvider extends InheritedWidget {

  RouteProvider(this.child, {
    Key key
  })  : super(key: key, child: child);


  final Widget child;
  final String prTitle = "";


  final Query _forCollection = FirebaseFirestore.instance.collection("percursos");//.orderBy("codRoute", "asc");





  static RouteProvider of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<RouteProvider>();
  }



  @override
  bool updateShouldNotify(RouteProvider old) {
    return true;
  }

}