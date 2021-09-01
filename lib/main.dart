import 'dart:js';

import 'package:flutter/material.dart';

import 'films/davinci.dart';
import 'allFilm.dart';


void main(){
  runApp(MyApp());
}

final routes = {
  'allfilm' : (context) => AllFilm(),
  
};

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  //
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: TextTheme(
              headline1: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black))),
      routes: routes,
      initialRoute: 'allfilm',
    );
  }
}
