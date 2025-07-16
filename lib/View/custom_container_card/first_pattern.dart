
import 'package:flutter/material.dart';
import 'package:gradution_project/View/custom_container_card/Patterns.dart';
import 'package:gradution_project/View/features/EachPatternInfo/ESFP.dart';
import 'package:gradution_project/View/features/EachPatternInfo/ESTP.dart';
import 'package:gradution_project/View/features/EachPatternInfo/ISTP.dart';
import 'package:gradution_project/View/features/EachPatternInfo/isep.dart';
import 'package:gradution_project/View/widget/persona_card.dart';


class FirstPattern extends StatelessWidget {
  const FirstPattern ({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Patterns(card1: PersonaCard(imgname: 'assets/istp.png',tex1: 'مبدع',tex2: 'ISTP', nav2: Istp(),),
    card2: PersonaCard(imgname: 'assets/isfp.png',tex1: 'مغامر',tex2: 'ISFP', nav2: Isfp(),),
    card3: PersonaCard(imgname: 'assets/esfp.png',tex1: 'مسلي',tex2: 'ESFP', nav2: Esfp(),),
    card4: PersonaCard(imgname: 'assets/estp.png',tex1: 'رائد أعمال',tex2: 'ESTP', nav2: Estp(),),
     );
  }
}

