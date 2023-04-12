import 'package:flutter/material.dart';
import 'package:proyecto/views/home.dart';
import 'package:proyecto/views/lovewar.dart';
class CardRomance extends StatelessWidget {

  const CardRomance({super.key,});
  
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        const Text("Animes de Romance",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
        Card(
        child: InkWell(
         onTap:(){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=>    LoveWar()
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
          image: const NetworkImage('https://drive.google.com/uc?export=view&id=1EfHBUZsVypTxx8ZK7jCDikcyuX8XtQoC'),
          fit: BoxFit.cover,
        ),
      ),
      child:  Stack(
        children: [
         const Align(
            alignment: Alignment.center,
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 5.0),
              child: Text(
                'Kaguya-sama: Love is War',
                style: TextStyle(
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
                    children: const[
                       Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 18,
                      ),
                       SizedBox(width: 7),
                      Text('8.4'),
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
                  MaterialPageRoute(builder: (context)=>   HomePage()
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
          image: const NetworkImage('https://drive.google.com/uc?export=view&id=1FHeiMII6q5_GrJclph_lG_ZbAR8Mkl_A'),
          fit: BoxFit.cover,
        ),
      ),
      child:  Stack(
        children: [
         const Align(
            alignment: Alignment.center,
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 5.0),
              child: Text(
                'Kimi ni Todoke',
                style: TextStyle(
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
                    children: const[
                       Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 18,
                      ),
                       SizedBox(width: 7),
                      Text('8.4'),
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
                  MaterialPageRoute(builder: (context)=>   HomePage()
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
          image: const NetworkImage('https://drive.google.com/uc?export=view&id=1MsmDU4fuvVGrZxnDiRBWS_IuRtLZeWeW'),
          fit: BoxFit.cover,
        ),
      ),
      child:  Stack(
        children: [
         const Align(
            alignment: Alignment.center,
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 5.0),
              child: Text(
                'ReLife',
                style: TextStyle(
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
                    children: const[
                       Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 18,
                      ),
                       SizedBox(width: 7),
                      Text('8.5'),
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
                  MaterialPageRoute(builder: (context)=>   HomePage()
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
          image: const NetworkImage('https://drive.google.com/uc?export=view&id=1nwtYXkWnS31I-SIoQzJvC1NoD8RLnnkr'),
          fit: BoxFit.cover,
        ),
      ),
      child:  Stack(
        children: [
         const Align(
            alignment: Alignment.center,
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 5.0),
              child: Text(
                'Sasaki to miyano',
                style: TextStyle(
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
                    children: const[
                       Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 18,
                      ),
                       SizedBox(width: 7),
                      Text('8.4'),
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