import 'package:flutter/material.dart';
import 'package:proyecto/views/home.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Proyecto Anime',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch:Colors.blue,   
        primaryColor: Colors.white,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.white),
        ),
      ),

      home: HomePage(),

      //home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

