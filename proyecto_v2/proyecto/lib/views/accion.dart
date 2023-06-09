import 'package:flutter/material.dart';
import 'package:proyecto/views/widgets/side_menu.dart';

import 'widgets/card_accion.dart';

class Accion extends StatefulWidget {
  const Accion({Key?key}):super(key:key);

  @override
  State<Accion> createState() => _AccionState();
}

class _AccionState extends State<Accion> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
            backgroundColor: Color.fromRGBO(27 , 1, 97, 38),
            title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const[
            Icon(Icons.menu_book_sharp),
            SizedBox(width:10),
            Text('Catálago de Animes'),
            ],  
        ),
      ),
      drawer: const SideMenu(),
      body:const  CardAccion()

    );
  }
}