import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LoveWar extends StatelessWidget {
    LoveWar({super.key});
    final Uri _url = Uri.parse('https://www.youtube.com/watch?v=YlmIUGgXJLE');
  Future<void> _launchUrl() async{
    if(!await launchUrl(_url)){
      throw Exception('No se pudo encontrar $_url');
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
                  'https://drive.google.com/uc?export=view&id=1EfHBUZsVypTxx8ZK7jCDikcyuX8XtQoC',
                  width: MediaQuery.of(context).size.width / 1.2,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding:const EdgeInsets.only(left: 25, right: 40),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Kaguya-sama: Love is War',
                        style: TextStyle(fontSize: 20,
                          color:const Color.fromARGB(255, 255, 110, 32)
                              .withOpacity(0.4),
                          letterSpacing: 3,
                        ),
                      ),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                    children: const[  
                       Icon(
                        Icons.timer,
                        color: Color.fromARGB(255, 135, 30, 1),
                        size: 20,
                      ),
                       SizedBox(width:7),
                      Text('25 minutos', style: 
                      TextStyle(
                        fontSize: 20,
                        color: Colors.black38,
                        letterSpacing: 2
                      ),),
                     Icon(
                        Icons.score,
                        color: Color.fromARGB(255, 135, 30, 1),
                        size: 20,
                      ), SizedBox(width:7),
                      Text('8.4', style: 
                      TextStyle(
                        fontSize: 20,
                        color: Colors.black38,
                        letterSpacing: 2
                      ),),
                    ]
                    ,),
                    const SizedBox(height: 60),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        '¡Todo vale en el amor y en la guerra! Dos genios. Dos cerebros. Dos corazones. Una batalla. ¡¿Quién declarará primero su amor?! Kaguya Shinomiya y Miyuki Shirogane son dos prodigios de gran inteligencia y quienes controlan el consejo de estudiantes de su prestigiosa academia. Pero claro, estar en la cima es algo que incluye una buena dosis de soledad como extra, y ambos acaban enamorándose el uno del otro. ¿El problema? Que ambos son demasiado orgullosos como para admitir que están enamorados.',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color:Colors.black87.withOpacity(0.3)),
                      ),
                    ),
                    const SizedBox(height: 60),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Center(
                            child: ElevatedButton(onPressed: _launchUrl,
                            child:
                            Text('ver trailer',
                            style: TextStyle(color: Colors.white.withOpacity(0.3)),),
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
