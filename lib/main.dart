import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Random_List.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override

  List randExclude=Random_List(list: [1,2,3,4,5,6,7],iterations: 5).randExclude();
  List randInclude=Random_List(list: [1,2,3,4,5,6,7],iterations: 5).randInclude();

  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor:Colors.teal,
            body: Stack(
                children:[
                  Align(alignment:Alignment(0,-0.5),child: Text("input list  "+[1,2,3,4,5,6,7].toString())),
                  Align(alignment:Alignment(0,0),child: Text("randExclude list  "+randExclude.toString())),
                  Align(alignment:Alignment(0,0.5),child: Text("randInclude list  "+randInclude.toString())),
                ]
            )));
  }

}