import 'package:flutter/material.dart';
import 'package:gradution_project/PersonaCard.dart';
import 'package:gradution_project/custom_container_card/Patterns.dart';

class Thirdpattern extends StatelessWidget {
  const Thirdpattern({super.key});

  @override
  Widget build(BuildContext context) {
    return const Patterns(card1:  Personacard(imgname: 'assets/infp.png',tex1: 'وسيط',tex2: 'INFP'), 
    card2: Personacard(imgname: 'assets/infj.png',tex1: 'محامي',tex2: 'INFJ'),
     card3: Personacard(imgname: 'assets/enfp.png',tex1: 'مناضل',tex2: 'ENFP'), 
     card4:Personacard(imgname: 'assets/enfj.png',tex1: ' بطل',tex2: 'ENFJ'),

    );
  }
}