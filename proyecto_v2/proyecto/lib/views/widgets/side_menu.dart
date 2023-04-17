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
                child:Image.network('https://drive.google.com/uc?export=view&id=1LbEjGAomE9xm8D_TtLow0OU0FQFQzuSZ'))),
              ListTile(leading:const Icon(Icons.home, color: Color.fromRGBO(27 , 1, 97, 38)),title:const Text('Inicio', style: TextStyle(color: Color.fromRGBO(1, 1, 1, 1))),
              onTap:() => Navigator.popUntil(context, ModalRoute.withName('/')),
              ),
               ListTile(leading:const Icon(Icons.favorite, color: Color.fromRGBO(27 , 1, 97, 38)),title:const Text('Romance'),
              onTap:(){
                Navigator.of(context).push(
                  MaterialPageRoute(builder:(context)=> const Romance()
                  )
                );
              },),
               ListTile(leading:const Icon(Icons.paragliding, color: Color.fromRGBO(27 , 1, 97, 38)),title:const Text('Accion'),
              onTap:(){
                Navigator.of(context).push(
                  MaterialPageRoute(builder:(context)=> const Accion()
                  )
                );
              },),
              ListTile(leading:const Icon(Icons.science, color: Color.fromRGBO(27 , 1, 97, 38)),title:const Text('Ciencia Ficción'),
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