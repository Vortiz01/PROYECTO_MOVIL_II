import 'package:flutter/material.dart';
import 'package:proyecto/views/widgets/recipe_card.dart';
import 'package:proyecto/views/widgets/side_menu.dart';
import 'romance.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage>{
  @override

  Widget build(BuildContext context){
    return Scaffold(

      drawer: const SideMenu(),

        appBar: AppBar(
            backgroundColor: Color.fromRGBO(27 , 1, 97, 38),
            title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Icon(Icons.menu_book_sharp),
            SizedBox(width:10),
            Text('Catálago de Animes'),
            ],
          
        ),
      ),
      body:
       RecipeCard(
          title: 'Naruto',
          rating: '4.9',
          precio: '15',
          thumbnailUrl:'https://drive.google.com/uc?export=view&id=1wWiAx-SqVHnwTvpkvY0-ebOq7PjdPkJh',
      )

    );
  }
}