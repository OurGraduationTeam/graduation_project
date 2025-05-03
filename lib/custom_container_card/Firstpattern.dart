
import 'package:flutter/material.dart';
import 'package:gradution_project/EachPatternInfo/ESFP.dart';
import 'package:gradution_project/EachPatternInfo/ESTP.dart';
import 'package:gradution_project/EachPatternInfo/ISFP.dart';
import 'package:gradution_project/EachPatternInfo/ISTP.dart';
import 'package:gradution_project/PersonaCard.dart';
import 'package:gradution_project/custom_container_card/Patterns.dart';

class Firstpattern extends StatelessWidget {
  const Firstpattern ({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Patterns(card1: Personacard(imgname: 'assets/istp.png',tex1: 'مبدع',tex2: 'ISTP', nav2: Istp(),),
    card2: Personacard(imgname: 'assets/isfp.png',tex1: 'مغامر',tex2: 'ISFP', nav2: Isfp(),),
    card3: Personacard(imgname: 'assets/esfp.png',tex1: 'مسلي',tex2: 'ESFP', nav2: Esfp(),),
    card4: Personacard(imgname: 'assets/estp.png',tex1: 'رائد أعمال',tex2: 'ESTP', nav2: Estp(),),
     );
  }
}

