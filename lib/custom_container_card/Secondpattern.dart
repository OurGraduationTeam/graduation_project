import 'package:flutter/widgets.dart';
import 'package:gradution_project/PersonaCard.dart';
import 'package:gradution_project/custom_container_card/Patterns.dart';

class Secondpattern extends StatelessWidget {
  const Secondpattern({super.key});

  @override
  Widget build(BuildContext context) {
    return const Patterns(
      card1: Personacard(imgname: 'assets/isfj.png',tex1: 'مدافع',tex2: 'ISFJ'),
      card2: Personacard(imgname: 'assets/istj.png',tex1: 'لوجستي',tex2: 'ISTJ'), 
      card3:Personacard(imgname: 'assets/esfj.png',tex1: 'قنصل',tex2: 'ESFJ') , 
      card4:Personacard(imgname: 'assets/estj.png',tex1: ' تنفيذي',tex2: 'ESTJ') ,
    );
  }
}