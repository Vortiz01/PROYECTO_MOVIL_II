import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PaginaIndividual extends StatelessWidget {
  final dynamic nombre;
  final dynamic imagen;
  final dynamic descripcion;
  final dynamic score;
  final dynamic tiempo;
  final String url;

   const PaginaIndividual({super.key,
    required this.nombre,
    required this.imagen,
    required this.descripcion,
    required this.score,
    required this.tiempo,
    required this.url,

    });

  Future<void> _launchUrl() async{
    Uri url2 = Uri.parse(url);
   if(!await launchUrl(url2)){
      throw Exception('No se pudo encontrar $url');
    }
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding:const EdgeInsets.only(top: 30, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:const EdgeInsets.only(left: 25),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.black54.withOpacity(0.5),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Center(
                child: Image.network(
                  imagen,
                  width: MediaQuery.of(context).size.width / 1.2,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding:const EdgeInsets.only(left: 25, right: 40),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        nombre,
                        style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,
                          color:const Color.fromARGB(255, 255, 110, 32)
                              .withOpacity(0.4),
                          letterSpacing: 2,
                        ),
                      ),
                      const SizedBox(height:5),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[  
                       const Icon(
                        Icons.timer,
                        color: Color.fromARGB(255, 135, 30, 1),
                        size: 20,
                      ),
                       const SizedBox(width:2),
                     Text(tiempo, style: 
                      const TextStyle(
                        fontSize: 20,
                        color: Colors.black38,
                        letterSpacing: 2
                      ),),
                      const SizedBox(width: 7),
                     const Icon(
                        Icons.score,
                        color: Color.fromARGB(255, 135, 30, 1),
                        size: 20,
                      ),const  SizedBox(width:2),
                      Text(score, style: 
                      const TextStyle(
                        fontSize: 20,
                        color: Colors.black38,
                        letterSpacing: 2
                      ),),
                    
                    ]
                    ,),
                    const SizedBox(height: 9),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                      descripcion,
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color:Colors.black87.withOpacity(0.3)),
                      ),
                    ),
                    const SizedBox(height: 15),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                         Center(
                           child: ElevatedButton(
                            style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(146, 226, 80, 18),minimumSize: const Size(70, 60)),
                            onPressed: _launchUrl,
                            child:
                            const Text('ver trailer',
                            style:  TextStyle(color:  Color.fromARGB(255, 254, 254, 254),fontSize: 25),),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ]),
              ),
            ],
          ),
        )),
      ),
    );
  }
}