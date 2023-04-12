import 'package:flutter/material.dart';
import 'package:proyecto/views/home.dart';

import '../romance.dart';
class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child:Container(
          color:const Color.fromARGB(255, 252, 252, 252),
          child:ListView(
            children: [
              DrawerHeader(
              child:Center(
                child:Image.network('https://drive.google.com/uc?export=view&id=1bcsT2BEgBAXhoY3TtwYYUTpPu6B1nbXh'))),
              ListTile(leading:Icon(Icons.home),title:const Text('Inicio'),
              onTap:(){
                Navigator.of(context).push(
                  MaterialPageRoute(builder:(context)=> HomePage()
                  )
                );
              },),
               ListTile(leading:Icon(Icons.favorite),title:const Text('Romance'),
              onTap:(){
                Navigator.of(context).push(
                  MaterialPageRoute(builder:(context)=> Romance()
                  )
                );
              },),
               ListTile(leading:Icon(Icons.home),title:const Text('Inicio'),
              onTap:(){
                Navigator.of(context).push(
                  MaterialPageRoute(builder:(context)=> HomePage()
                  )
                );
              },)

            ],
          ),
        ),
      );
  }
}