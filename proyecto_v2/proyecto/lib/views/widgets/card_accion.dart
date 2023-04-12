import 'package:flutter/material.dart';
import 'package:proyecto/views/pagina_individual.dart';

class CardAccion extends StatefulWidget {

   const CardAccion({super.key,});

  @override
  State<CardAccion> createState() => _CardAccionState();
}

class _CardAccionState extends State<CardAccion> {
  List animeA1=['Boku no Hero',"https://drive.google.com/uc?export=view&id=1Qi_mVHRE6KevwXAtWFENAkIt1ElGAPc1",
 'Las personas no nacen igual. El protagonista de esta historia es uno de esos casos raros que nacen sin superpoderes, pero esto no le impedirá perseguir su sueño: ser un gran héroe como el legendario All-Might. Para convertirse en el héroe que quiere ser, se apuntará a una de las academias de héroes más prestigiosas del país: Yueiko. Con la ayuda de su ídolo, All-Might, ¿podrá convertirse en un verdadero héroe?',
  '8.18','24m','https://www.youtube.com/watch?v=lFXpmYK6SEQ','6'];

   List animeA2=['Bungou Stray Dogs',"https://drive.google.com/uc?export=view&id=1jJ0O7pvuXMI73iCjjPBJfWrHWyQGd3w2",
   'La historia está protagonizada por una liga de figuras literarias con poderes sobrenaturales, como Ryunosuke Akutagawa, que en la vida real escribió varias novelas y en el manga tiene el poder de transformar su capa en una especie de monstruo. Él y sus compañeros escritores se dedicarán a resolver misterios como parte de la “Agencia Armada de Detectives”.',
  '7.78','23m','https://www.youtube.com/watch?v=f9OV_KzR3SM','4'];

  List animeA3=[ "Demon Slayer",'https://drive.google.com/uc?export=view&id=1EQmvpRVK69Q6ZUS0AyI75UtIetMUCmbo',
  'Estamos en la era Taisho de Japón. Tanjiro, un joven que se gana la vida vendiendo carbón, descubre un día que su familia ha sido asesinada por un demonio. Para empeorar las cosas, su hermana menor Nezuko, la única superviviente de la masacre, ha sufrido una transformación en demonio. Destrozado por los acontecimientos Tanjiro decide convertirse en un cazador de demonios para poder devolver a su hermana a la normalidad y matar al demonio que masacró a su familia.',
  '8.57','23m','https://www.youtube.com/watch?v=VQGCKyvzIM4','2'];

  List animeA4=['Spy x Family','https://drive.google.com/uc?export=view&id=1czzfWwu6IrUEaO9JEuQ7kEJ9rWvhUvmb',
  'La División de Inteligencia de Westalis (WISE) envía a su mejor espía, "Twilight", en una misión ultrasecreta para vigilar los movimientos de Donovan Desmond, quien dirige el Partido Nacional por la Unidad de Ostania, responsable de bombardear los esfuerzos de paz entre ambos países. Twilight adopta la identidad del psiquiatra Loid Forger y comienza a buscar miembros para su familia, pero Anya, la hija que adopta, resulta tener la capacidad para leer las mentes a los demás, mientras que su esposa, Yor, es una asesina. Todos mantendrán estos en secreto, pero comenzarán una vida juntos en la que deberán ocultarse sus identidades unos a otros. La paz del mundo está ahora en manos de esta nueva familia mientras se embarcan en una aventura repleta de sorpresas.',
  '9.08','24m','https://www.youtube.com/watch?v=44qfOGvEWAU','2'];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
         Column(
          crossAxisAlignment: CrossAxisAlignment.center,
        children:const  [
           Text("Animes de Romance",style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black54),),
        ],
        ),
        Card(
        child: InkWell(
         onTap:(){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=>    PaginaIndividual(nombre: animeA1[0], imagen: animeA1[1], descripcion: animeA1[2], score: animeA1[3], tiempo: animeA1[4], url: animeA1[5],temporada: animeA1[6])
                  )
                );
              },
               child: Column(children: [
         Container(
      margin: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
      width: MediaQuery.of(context).size.width,
      height: 180,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.6),
            // ignore: prefer_const_constructors
            offset: Offset(
              0.0,
              10.0,
            ),
            blurRadius: 10.0,
            spreadRadius: -6.0,
          ),
        ],
        image: DecorationImage(
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.35),
            BlendMode.multiply,
          ),
          image:  NetworkImage(animeA1[1]),
          fit: BoxFit.cover,
        ),
      ),
      child:  Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Text(
                animeA1[0],
                style:const TextStyle(
                  fontSize: 19,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: <Widget>[
                      const Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 18,
                      ),
                       const SizedBox(width: 7),
                      Text(animeA1[3]),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    )
        ]),
        ),
      ),
       Card(
        child: InkWell(
         onTap:(){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=>   PaginaIndividual(nombre: animeA2[0], imagen: animeA2[1], descripcion: animeA2[2], score: animeA2[3], tiempo: animeA2[4], url: animeA2[5],temporada: animeA1[6])
                  )
                );
              },
               child: Column(children: [
         Container(
      margin: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
      width: MediaQuery.of(context).size.width,
      height: 180,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.6),
            // ignore: prefer_const_constructors
            offset: Offset(
              0.0,
              10.0,
            ),
            blurRadius: 10.0,
            spreadRadius: -6.0,
          ),
        ],
        image: DecorationImage(
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.35),
            BlendMode.multiply,
          ),
          image: NetworkImage(animeA2[1]),
          fit: BoxFit.cover,
        ),
      ),
      child:  Stack(
        children: [
         Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Text(
               animeA2[0],
                style: const TextStyle(
                  fontSize: 19,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                       const Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 18,
                      ),
                       const SizedBox(width: 7),
                      Text(animeA2[3]),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    )
        ]),
        ),
      ),
       Card(
        child: InkWell(
         onTap:(){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=>   PaginaIndividual(nombre: animeA3[0], imagen: animeA3[1], descripcion: animeA3[2], score: animeA3[3], tiempo:animeA3[4], url: animeA3[5],temporada: animeA1[6])
                  )
                );
              },
               child: Column(children: [
         Container(
      margin: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
      width: MediaQuery.of(context).size.width,
      height: 180,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.6),
            // ignore: prefer_const_constructors
            offset: Offset(
              0.0,
              10.0,
            ),
            blurRadius: 10.0,
            spreadRadius: -6.0,
          ),
        ],
        image: DecorationImage(
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.35),
            BlendMode.multiply,
          ),
          image:  NetworkImage(animeA3[1]),
          fit: BoxFit.cover,
        ),
      ),
      child:  Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const  EdgeInsets.symmetric(horizontal: 5.0),
              child: Text(
                animeA3[0],
                style: const TextStyle(
                  fontSize: 19,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                       const Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 18,
                      ),
                      const  SizedBox(width: 7),
                      Text(animeA3[3]),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    )
        ]),
        ),
      ),
       Card(
        child: InkWell(
         onTap:(){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=>   PaginaIndividual(nombre: animeA4[0], imagen: animeA4[1], descripcion: animeA4[2], score: animeA4[3], tiempo: animeA4[4], url: animeA4[5],temporada: animeA1[6])
                  )
                );
              },
               child: Column(children: [
         Container(
      margin: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
      width: MediaQuery.of(context).size.width,
      height: 180,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.6),
            // ignore: prefer_const_constructors
            offset: Offset(
              0.0,
              10.0,
            ),
            blurRadius: 10.0,
            spreadRadius: -6.0,
          ),
        ],
        image: DecorationImage(
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.35),
            BlendMode.multiply,
          ),
          image:  NetworkImage(animeA4[1]),
          fit: BoxFit.cover,
        ),
      ),
      child:  Stack(
        children: [
         Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Text(
                animeA4[0],
                style: const TextStyle(
                  fontSize: 19,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 18,
                      ),
                      const SizedBox(width: 7),
                      Text(animeA4[3]),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    )
        ]),
        ),
      ),
      ],
    );
    
    
    
  }
}