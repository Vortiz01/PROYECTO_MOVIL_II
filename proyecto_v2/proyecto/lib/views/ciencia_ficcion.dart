import 'package:flutter/material.dart';
import 'package:proyecto/views/widgets/card_cienciaFiccion.dart';
import 'package:proyecto/views/widgets/side_menu.dart';

class CienciaFiccion extends StatefulWidget {
  const CienciaFiccion({Key?key}):super(key:key);

  @override
  State<CienciaFiccion> createState() => _CienciaFiccionState();
}

class _CienciaFiccionState extends State<CienciaFiccion> { 
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
            Text('Academia UA'),
            ],  
        ),
      ),
      drawer: const SideMenu(),
      body:const  CardCienciaFiccion()

    );
  }
}