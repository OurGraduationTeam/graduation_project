import 'package:flutter/widgets.dart';
import 'package:gradution_project/features/splash/EachPatternInfo/ESFJ.dart';
import 'package:gradution_project/features/splash/EachPatternInfo/ESTJ.dart';
import 'package:gradution_project/features/splash/EachPatternInfo/ISFJ.dart';
import 'package:gradution_project/features/splash/EachPatternInfo/ISTJ.dart';
import 'package:gradution_project/PersonaCard.dart';
import 'package:gradution_project/custom_container_card/Patterns.dart';

class Secondpattern extends StatelessWidget {
  const Secondpattern({super.key});

  @override
  Widget build(BuildContext context) {
    return const Patterns(
      card1: Personacard(imgname: 'assets/isfj.png',tex1: 'مدافع',tex2: 'ISFJ', nav2: Isfj(),),
      card2: Personacard(imgname: 'assets/istj.png',tex1: 'لوجستي',tex2: 'ISTJ', nav2: Istj(),), 
      card3:Personacard(imgname: 'assets/esfj.png',tex1: 'قنصل',tex2: 'ESFJ', nav2: Esfj(),) , 
      card4:Personacard(imgname: 'assets/estj.png',tex1: ' تنفيذي',tex2: 'ESTJ', nav2: Estj(),) ,
    );
  }
}