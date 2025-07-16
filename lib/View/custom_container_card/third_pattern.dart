import 'package:flutter/material.dart';
import 'package:gradution_project/View/custom_container_card/patterns.dart';
import 'package:gradution_project/View/features/EachPatternInfo/ENFJ.dart';
import 'package:gradution_project/View/features/EachPatternInfo/ENFP.dart';
import 'package:gradution_project/View/features/EachPatternInfo/INFJ.dart';
import 'package:gradution_project/View/features/EachPatternInfo/inep.dart';
import 'package:gradution_project/View/widget/Personancard.dart';

class ThirdPattern extends StatelessWidget {
  const ThirdPattern({super.key});

  @override
  Widget build(BuildContext context) {
    return const Patterns(card1:  Personacard(imgname: 'assets/images/infp.png',tex1: 'وسيط',tex2: 'INFP', nav2: Infp(),), 
    card2: Personacard(imgname: 'assets/images/infj.png',tex1: 'محامي',tex2: 'INFJ', nav2: Infj(),),
     card3: Personacard(imgname: 'assets/images/enfp.png',tex1: 'مناضل',tex2: 'ENFP', nav2: Enfp(),), 
     card4:Personacard(imgname: 'assets/images/enfj.png',tex1: ' بطل',tex2: 'ENFJ', nav2: Enfj(),),

    );
  }
}