import 'package:flutter/material.dart';
import 'package:proyecto/views/accion.dart';
import 'package:proyecto/views/home.dart';
import 'package:proyecto/views/ciencia_ficcion.dart';

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
              ListTile(leading:const Icon(Icons.home),title:const Text('Inicio'),
              onTap:() => Navigator.popUntil(context, ModalRoute.withName('/')),
              ),
               ListTile(leading:const Icon(Icons.favorite),title:const Text('Romance'),
              onTap:(){
                Navigator.of(context).push(
                  MaterialPageRoute(builder:(context)=> const Romance()
                  )
                );
              },),
               ListTile(leading:const Icon(Icons.paragliding),title:const Text('Accion'),
              onTap:(){
                Navigator.of(context).push(
                  MaterialPageRoute(builder:(context)=> const Accion()
                  )
                );
              },),
              ListTile(leading:const Icon(Icons.science),title:const Text('Ciencia Ficción'),
              onTap:(){
                Navigator.of(context).push(
                  MaterialPageRoute(builder:(context)=> const CienciaFiccion()
                  )
                );
              },)
            ],
          ),
        ),
      );
  }
}