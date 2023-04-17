import 'package:flutter/material.dart';
import 'package:proyecto/views/pagina_individual.dart';

class CardCienciaFiccion extends StatefulWidget {

   const CardCienciaFiccion({super.key,});

  @override
  State<CardCienciaFiccion> createState() => _CardCienciaFiccionState();
}

class _CardCienciaFiccionState extends State<CardCienciaFiccion> {
  List animeR1=['Full Metal Alchemist BrotherHood',"https://drive.google.com/uc?export=view&id=1Yy8mRzu6AZmMZVKEtjvzqkQNuiZVQXHC",
  'Tras perder a su madre, Alphonse y Edward Elric tratan de revivirla usando la ciencia prohibida de la alquimia humana. Sin embargo, la alquimia opera bajo la teoría del cambio equivalente y romper el tabú de la alquimia humana acarrea un alto precio. Ed pierde una de sus piernas y Al su cuerpo. Ed logra sellar el alma de Al dentro de una gran armadura, a costa de su brazo. Años después, Ed (ahora con dos extremidades mecánicas) y Al (aún atrapado en la armadura) dejan su casa de la niñez, cada uno preocupado por la felicidad del otro. Ed, quien tuvo un talento y habilidad natural para la alquimia, se convierte en un alquimista con certificado nacional y pronto es conocido en todas partes como el Alquimista Fullmetal.',
  '9.3','24m','https://www.youtube.com/watch?v=kx0nBaS_q50'];

   List animeR2=['Yakusoku no Neverland 1 Temporada',"https://drive.google.com/uc?export=view&id=1MSfoP7lIHU4rbkGfvZL2WqvimQwUXHuN",
   'Por mucho que los niños la quieran, ella no es su madre. Viven juntos, pero no son familiares de sangre. Grace Field es un hogar al que son enviados los niños que no tienen padres. Un hogar irreemplazable para los 38 niños que allí viven felices su día a día, como si fueran hermanos, aunque al inicio fueran completos desconocidos. Al menos así era hasta que cierto descubrimiento cambió sus vidas por completo.',
  '9.9','20m','https://www.youtube.com/watch?v=ApLudqucq-s'];

  List animeR3=[ "Sword Art Online Acilization - War of Underworld",'https://drive.google.com/uc?export=view&id=1amVg1v1RHlW0YlNgyBw6PcNSF17Zv70B',
  'Sintiéndose insegura por la gente de la Iglesia del Axioma, Alice lleva al inconsciente Kirito de vuelta a su pueblo natal, la aldea de Rulid, haciendo caso omiso de su destierro debido a un crimen no resuelto. Ahora, Alice vive una vida ordinaria y pacífica cerca de la aldea, deseando que Kirito despierte.',
  '6.7','27m','https://www.youtube.com/watch?v=Z7oiq9LDm8k'];

  List animeR4=['Orange','https://drive.google.com/uc?export=view&id=1vEsTNC4xgcB0_hWxEyWEnHrZ143eC0Tp',
  'El primer día de clase, Naho recibe una misteriosa carta de quien dice ser su yo del futuro, en la que se predice de forma exacta cada cosa que está a punto de pasarle. Además, la remitente le aconseja no llevar a cabo determinadas acciones. Haciendo caso omiso de ella, Naho invita al chico nuevo que acaba de llegar desde Tokio, Kakeru, a salir con sus amigos después del instituto. Pero algo terrible le ocurre a Kakeru ese día.',
  '9.8','19m','https://www.youtube.com/watch?v=kVDqRG0qbBs'];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
         Column(
          crossAxisAlignment: CrossAxisAlignment.center,
        children:const  [
           Text("Animes de Ciencia Ficción",style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black54),),
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