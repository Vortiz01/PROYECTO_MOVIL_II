import 'package:flutter/material.dart';
import 'package:proyecto/views/widgets/card_romance.dart';
import 'package:proyecto/views/widgets/side_menu.dart';

class Romance extends StatefulWidget {
  const Romance({Key?key}):super(key:key);

  @override
  State<Romance> createState() => _RomanceState();
}


class _RomanceState extends State<Romance> {
  
  List<Container>lista=[];
 var arreglo=[{'nombre': "Kaguya-sama: Love is War",
 "imagen":"https://drive.google.com/uc?export=view&id=1EfHBUZsVypTxx8ZK7jCDikcyuX8XtQoC",
 'descripcion': '¡Todo vale en el amor y en la guerra! Dos genios. Dos cerebros. Dos corazones. Una batalla. ¡¿Quién declarará primero su amor?! Kaguya Shinomiya y Miyuki Shirogane son dos prodigios de gran inteligencia y quienes controlan el consejo de estudiantes de su prestigiosa academia. Pero claro, estar en la cima es algo que incluye una buena dosis de soledad como extra, y ambos acaban enamorándose el uno del otro. ¿El problema? Que ambos son demasiado orgullosos como para admitir que están enamorados.',
 'duracion': '24m','MAL Score':'8.4','Estudio':'A-1 Pictures'},
 {'nombre': "Kimi ni Todoke",
 "imagen":"https://drive.google.com/uc?export=view&id=1FHeiMII6q5_GrJclph_lG_ZbAR8Mkl_A",
 'descripcion': 'Sawako Kuronuma, llamada Sadako por sus compañeras por su parecido con el personaje de Ringu, siempre se ha entendido mal y teme por su apariencia. Hay rumores de que Sawako puede ver fantasmas y es una maldición para las personas. Pero cuando su ídolo, el popular muchacho Kazehaya, comienza a hablar con ella, todo cambia.Lento pero seguro, florece un dulce amor entre los dos, ya que superará cualquier circunstancia y obstáculos en el camino.',
 'duracion': '22m','MAL Score':'8.4','Estudio':'Productions I.G'},
 {'nombre': "ReLife",
 'imagen':'https://drive.google.com/uc?export=view&id=1MsmDU4fuvVGrZxnDiRBWS_IuRtLZeWeW',
 'descripcion': 'La historia está protagonizada por Arata Kaizaki, un hombre de 27 años, soltero y desempleado al que sus padres le dejan sin apoyo financiero. Incapaz de encontrar trabajo debido a que siempre abandonó sus empleos anteriores en menos de tres meses, no sabe qué hacer. Una noche, tras estar bebiendo con un viejo amigo del instituto, Arata conoce a Ryo Yoake, un hombre que le ofrece a Arata una pastilla que lo convertirá nuevamente en un adolescente de 17 años y así poder rehacer su vida.',
 'duracion': '23m','MAL Score':'8.5','Estudio':'TMS Entertainment'},
 {'nombre': "Sasaki to miyano",
 'imagen':'https://drive.google.com/uc?export=view&id=1nwtYXkWnS31I-SIoQzJvC1NoD8RLnnkr',
 'descripcion': 'Yoshikazu Miyano es un manso estudiante de preparatoria al que le gusta leer mangas boys-love. Un día, se ve en la tesitura de detener una feroz pelea escolar, sin saber qué hacer. Antes de que todo vaya a peor, es interrumpido por el alumno de cursos superiores Shuumei Sasaki, que ocupa su lugar con valentía y salva a Miyano de su pena',
 'duracion': '23m','Score':'8.4','estudio':'Studio Deen'},];

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
            title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const[
            Icon(Icons.shop),
            SizedBox(width:10),
            Text('Academia UA'),
            ],  
        ),
      ),
      drawer: const SideMenu(),
      body:const CardRomance()

    );
  }
}