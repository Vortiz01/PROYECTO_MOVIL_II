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
            title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Icon(Icons.shop),
            SizedBox(width:10),
            Text('Anime Shop'),
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