import 'package:flutter/material.dart';
import 'package:proyecto/views/pagina_individual.dart';

class CardRomance extends StatefulWidget {

   const CardRomance({super.key,});

  @override
  State<CardRomance> createState() => _CardRomanceState();
}

class _CardRomanceState extends State<CardRomance> {
  List animeR1=['Kaguya-sama: Love is War',"https://drive.google.com/uc?export=view&id=1EfHBUZsVypTxx8ZK7jCDikcyuX8XtQoC",
  '¡Todo vale en el amor y en la guerra! Dos genios. Dos cerebros. Dos corazones. Una batalla. ¡¿Quién declarará primero su amor?! Kaguya Shinomiya y Miyuki Shirogane son dos prodigios de gran inteligencia y quienes controlan el consejo de estudiantes de su prestigiosa academia. Pero claro, estar en la cima es algo que incluye una buena dosis de soledad como extra, y ambos acaban enamorándose el uno del otro. ¿El problema? Que ambos son demasiado orgullosos como para admitir que están enamorados.',
  '8.4','24m','https://www.youtube.com/watch?v=YlmIUGgXJLE'];

   List animeR2=['Kimi ni Todoke',"https://drive.google.com/uc?export=view&id=1FHeiMII6q5_GrJclph_lG_ZbAR8Mkl_A",
   'Sawako Kuronuma, llamada Sadako por sus compañeras por su parecido con el personaje de Ringu, siempre se ha entendido mal y teme por su apariencia. Hay rumores de que Sawako puede ver fantasmas y es una maldición para las personas. Pero cuando su ídolo, el popular muchacho Kazehaya, comienza a hablar con ella, todo cambia.Lento pero seguro, florece un dulce amor entre los dos, ya que superará cualquier circunstancia y obstáculos en el camino.',
  '8.4','22m','https://www.youtube.com/watch?v=_gJR6gfRYEQ'];

  List animeR3=[ "ReLife",'https://drive.google.com/uc?export=view&id=1MsmDU4fuvVGrZxnDiRBWS_IuRtLZeWeW',
  'La historia está protagonizada por Arata Kaizaki, un hombre de 27 años, soltero y desempleado al que sus padres le dejan sin apoyo financiero. Incapaz de encontrar trabajo debido a que siempre abandonó sus empleos anteriores en menos de tres meses, no sabe qué hacer. Una noche, tras estar bebiendo con un viejo amigo del instituto, Arata conoce a Ryo Yoake, un hombre que le ofrece a Arata una pastilla que lo convertirá nuevamente en un adolescente de 17 años y así poder rehacer su vida.',
  '8.5','23m','https://www.youtube.com/watch?v=Azs6jA8vRH8'];

  List animeR4=['Sasaki to miyano','https://drive.google.com/uc?export=view&id=1nwtYXkWnS31I-SIoQzJvC1NoD8RLnnkr',
  'Yoshikazu Miyano es un manso estudiante de preparatoria al que le gusta leer mangas boys-love. Un día, se ve en la tesitura de detener una feroz pelea escolar, sin saber qué hacer. Antes de que todo vaya a peor, es interrumpido por el alumno de cursos superiores Shuumei Sasaki, que ocupa su lugar con valentía y salva a Miyano de su pena',
  '8.4','23m','https://www.youtube.com/watch?v=IAmxN2ElqjQ'];

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
                  MaterialPageRoute(builder: (context)=>    PaginaIndividual(nombre: animeR1[0], imagen: animeR1[1], descripcion: animeR1[2], score: animeR1[3], tiempo: animeR1[4], url: animeR1[5])
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
          image:  NetworkImage(animeR1[1]),
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
                animeR1[0],
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
                      Text(animeR1[3]),
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
                  MaterialPageRoute(builder: (context)=>   PaginaIndividual(nombre: animeR2[0], imagen: animeR2[1], descripcion: animeR2[2], score: animeR2[3], tiempo: animeR2[4], url: animeR2[5])
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
          image: NetworkImage(animeR2[1]),
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
               animeR2[0],
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
                      Text(animeR2[3]),
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
                  MaterialPageRoute(builder: (context)=>   PaginaIndividual(nombre: animeR3[0], imagen: animeR3[1], descripcion: animeR3[2], score: animeR3[3], tiempo:animeR3[4], url: animeR3[5])
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
          image:  NetworkImage(animeR3[1]),
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
                animeR3[0],
                style:const  TextStyle(
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
                      Text(animeR3[3]),
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
                  MaterialPageRoute(builder: (context)=>   PaginaIndividual(nombre: animeR4[0], imagen: animeR4[1], descripcion: animeR4[2], score: animeR4[3], tiempo: animeR4[4], url: animeR4[5])
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
          image:  NetworkImage(animeR4[1]),
          fit: BoxFit.cover,
        ),
      ),
      child:  Stack(
        children: [
         Align(
            alignment: Alignment.center,
            child: Padding(
              padding:const EdgeInsets.symmetric(horizontal: 5.0),
              child: Text(
                animeR4[0],
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
                     const  Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 18,
                      ),
                       const SizedBox(width: 7),
                      Text(animeR4[3]),
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