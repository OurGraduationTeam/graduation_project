import 'package:flutter/material.dart';
import 'package:gradution_project/features/splash/EachPatternInfo/ENFJ.dart';
import 'package:gradution_project/features/splash/EachPatternInfo/ENFP.dart';
import 'package:gradution_project/features/splash/EachPatternInfo/INFJ.dart';
import 'package:gradution_project/features/splash/EachPatternInfo/INFP.dart';
import 'package:gradution_project/PersonaCard.dart';
import 'package:gradution_project/custom_container_card/Patterns.dart';

class Thirdpattern extends StatelessWidget {
  const Thirdpattern({super.key});

  @override
  Widget build(BuildContext context) {
    return const Patterns(card1:  Personacard(imgname: 'assets/infp.png',tex1: 'وسيط',tex2: 'INFP', nav2: Infp(),), 
    card2: Personacard(imgname: 'assets/infj.png',tex1: 'محامي',tex2: 'INFJ', nav2: Infj(),),
     card3: Personacard(imgname: 'assets/enfp.png',tex1: 'مناضل',tex2: 'ENFP', nav2: Enfp(),), 
     card4:Personacard(imgname: 'assets/enfj.png',tex1: ' بطل',tex2: 'ENFJ', nav2: Enfj(),),

    );
  }
}