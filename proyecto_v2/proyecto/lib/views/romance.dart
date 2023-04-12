import 'package:flutter/material.dart';
import 'package:proyecto/views/widgets/card_romance.dart';
import 'package:proyecto/views/widgets/side_menu.dart';

class Romance extends StatefulWidget {
  const Romance({Key?key}):super(key:key);

  @override
  State<Romance> createState() => _RomanceState();
}

class _RomanceState extends State<Romance> { 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
            title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const[
            Icon(Icons.video_camera_front),
            SizedBox(width:10),
            Text('Academia UA'),
            ],  
        ),
      ),
      drawer: const SideMenu(),
      body:const  CardRomance()

    );
  }
}