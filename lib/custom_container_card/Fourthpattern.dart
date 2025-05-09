import 'package:flutter/material.dart';
import 'package:gradution_project/EachPatternInfo/ENTJ.dart';
import 'package:gradution_project/EachPatternInfo/ENTP.dart';
import 'package:gradution_project/EachPatternInfo/INTJ.dart';
import 'package:gradution_project/EachPatternInfo/INTP.dart';
import 'package:gradution_project/PersonaCard.dart';
import 'package:gradution_project/custom_container_card/Patterns.dart';

class Fourthpattern extends StatelessWidget {
  const Fourthpattern({super.key});

  @override
  Widget build(BuildContext context) {
    return const Patterns(card1: Personacard(imgname: 'assets/intp.png',tex1: 'منطقي',tex2: 'INTP', nav2: Intp(),),
     card2:  Personacard(imgname: 'assets/intj.png',tex1: 'مهندس',tex2: 'INTJ', nav2: Intj(),),
      card3:Personacard(imgname: 'assets/entp.png',tex1: 'محاور',tex2: 'ENTP', nav2: Entp(),), 
      card4: Personacard(imgname: 'assets/entj.png',tex1: ' قائد',tex2: 'ENTJ', nav2: Entj(),),

    );
  }
}