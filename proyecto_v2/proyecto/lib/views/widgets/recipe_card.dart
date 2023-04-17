import 'package:flutter/material.dart';
import 'package:proyecto/views/pagina_individual.dart';

class RecipeCard extends StatefulWidget {

   const RecipeCard({super.key,});

  @override
  State<RecipeCard> createState() => _RecipeCard();
}

class _RecipeCard extends State<RecipeCard> {

  List animeRC1 = [
  "Mob Psycho 100"
  ,"https://drive.google.com/uc?export=view&id=15jD_duM4oKEPf85C2kuL3PF8RLe-xXyP"
  ,"Cuenta la historia de “Mob”, un chico con poderes psíquicos que explota si su capacidad emocional alcanza el 100%. Recibió el apodo de “Mob” porque no destaca entre la gente, y trata de reprimir sus poderes para poder llevar una vida normal."
  ,"9.4"
  ,"22m"
  ,"https://www.youtube.com/watch?v=70tdB-1Lwqc"
  ];

  List animeRC2 = [
  "Shingeki No Kyojin"
  ,"https://drive.google.com/uc?export=view&id=1wsLGbYCkTDaRdktyx5RupzC87v7DAV4y"
  ,"La historia nos traslada a un mundo en el que la humanidad estuvo a punto de ser exterminada cientos de años atrás por los gigantes. Los gigantes son enormes, parecen no ser inteligentes y devoran seres humanos. Lo peor es que parece que lo hacen por placer y no por alimentarse. Una pequeña parte de la humanidad ha conseguido sobrevivir protegiéndose en una ciudad con unos altísimos muros, más altos que el mayor de los gigantes. La ciudad vive su vida tranquila, y hace más de 100 años que ningún gigante aparece por allí"
  ,"9.9"
  ,"21m"
  ,"https://www.youtube.com/watch?v=Vdf9A1GRHbg"
  ];

  List animeRC3 =  [
  "Dr. Stone: Stone Wars"
  ,"https://drive.google.com/uc?export=view&id=1eGqfPAMaYESNHxFDpXueAlQ55sxGm6BX"
  ,"Un fatídico día, toda la humanidad quedó petrificada por un destello de luz cegadora. Después de varios milenios, el estudiante de instituto Taiju se despierta y se encuentra perdido en un mundo de estatuas. Sin embargo, no está solo; su amigo, amante de la ciencia, ha estado trabajando durante unos meses y tiene un gran plan en mente: ¡poner en marcha la civilización con el poder de la ciencia!"
  ,"9.2"
  ,"21m"
  ,"https://www.youtube.com/watch?v=bXgip0F6qdc"
  ];

  List animeRC4 = [
  "Death Note"
  ,"https://drive.google.com/uc?export=view&id=1c5UN1hLF-JzDet6Dsi9G7OceBr4OVwhe"
  ,"Light Yagami es un excelente estudiante japonés que ha tenido una vida aburrida. Esto cambia radicalmente cuando encuentra tirado en el suelo un cuaderno conocido como Death Note (Libreta de la Muerte), un cuaderno perdido por Ryuk, un Shinigami (Dios de la muerte). Cualquier humano cuyo nombre esté escrito en el cuaderno morirá, y ahora Light ha decidido utilizar este poder para crear un mundo perfecto sin criminales."
  ,"9.9"
  ,"30m"
  ,"https://www.youtube.com/watch?v=NlJZ-YgAt-c"
  ];

  List animeRC5 = [
  "Ao Haru Ride"
  ,"https://drive.google.com/uc?export=view&id=1CLCvZclDrtiI-bddq_hN5FN8e-uno5M1"
  ,"Ao Haru Ride gira en torno a Futaba, una chica que en secundaria estaba enamorada de un chico llamado Ko Tanaka. Sin embargo, tras un malentendido, su relación como amigos finaliza cuando él cambia de escuela durante las vacaciones de verano. En el instituto, el mundo de Futaba se pone del revés al coincidir nuevamente con Ko, que ahora se llama Ko Mabuchi."
  ,"9.6"
  ,"20m"
  ,"https://www.youtube.com/watch?v=dcCe2ZMhXNE"
  ];

  List animeRC6 = [
  "Dororo"
  ,"https://drive.google.com/uc?export=view&id=1FD7mkdVkaPU7HGiZBtBwUINtf_KStohC"
  ,"Daigo Kagemitsu es un temible samurái que entregó su futuro hijo a demonios, a cambio de ver cumplido su sueño de conquistar el país. Al cabo del tiempo, nació un niño deforme, al que faltaban cuarenta y ocho partes de su cuerpo. Su ambicioso padre lo arrojó al río, pero el pequeño logró sobrevivir y, con el tiempo, convertirse en un diestro espadachín llamado Hyakkimaru, «pequeño monstruo». Años después, con la ayuda del joven y avispado Dororo, quien afirma ser el mejor ladrón de Japón, Hyakkimaru emprenderá un viaje a lo largo del cual se enfrentará a los demonios para recuperar las partes de su cuerpo."
  ,"9.0"
  ,"20m"
  ,"https://www.youtube.com/watch?v=YgHPBwLu0BA"
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
         Column(
          crossAxisAlignment: CrossAxisAlignment.center,
        children:const  [
           Text("Animes Destacados",style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black54),),
        ],
        ),
        Card(
        child: InkWell(
         onTap:(){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=>    PaginaIndividual(nombre: animeRC1[0], imagen: animeRC1[1], descripcion: animeRC1[2], score: animeRC1[3], tiempo: animeRC1[4], url: animeRC1[5])
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
          image:  NetworkImage(animeRC1[1]),
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
                animeRC1[0],
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
                      Text(animeRC1[3]),
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
                  MaterialPageRoute(builder: (context)=>   PaginaIndividual(nombre: animeRC2[0], imagen: animeRC2[1], descripcion: animeRC2[2], score: animeRC2[3], tiempo: animeRC2[4], url: animeRC2[5])
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
          image: NetworkImage(animeRC2[1]),
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
               animeRC2[0],
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
                      Text(animeRC2[3]),
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
                  MaterialPageRoute(builder: (context)=>   PaginaIndividual(nombre: animeRC4[0], imagen: animeRC4[1], descripcion: animeRC4[2], score: animeRC4[3], tiempo:animeRC4[4], url: animeRC4[5])
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
          image:  NetworkImage(animeRC4[1]),
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
                animeRC4[0],
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
                      Text(animeRC4[3]),
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
                  MaterialPageRoute(builder: (context)=>   PaginaIndividual(nombre: animeRC5[0], imagen: animeRC5[1], descripcion: animeRC5[2], score: animeRC5[3], tiempo: animeRC5[4], url: animeRC5[5])
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
          image:  NetworkImage(animeRC5[1]),
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
                animeRC5[0],
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
                      Text(animeRC5[3]),
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
                  MaterialPageRoute(builder: (context)=>   PaginaIndividual(nombre: animeRC6[0], imagen: animeRC6[1], descripcion: animeRC6[2], score: animeRC6[3], tiempo: animeRC6[4], url: animeRC6[5])
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
          image:  NetworkImage(animeRC6[1]),
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
                animeRC6[0],
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
                      Text(animeRC6[3]),
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