import 'package:flutter/material.dart';
import 'package:gradution_project/View/widget/Personalitypattern_container.dart';
import 'package:gradution_project/View/widget/constant.dart';

class PersonalityPatternBody extends StatelessWidget {
  const PersonalityPatternBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Column(children: [
      Container(
        height: height * 0.2,
        padding: const EdgeInsets.symmetric(vertical: 20),
        alignment: Alignment.center,
        child: const Text(
          'انواع الأنماط',
          style: TextStyle(
            fontSize: 26,
            color: secondaryColor,
          ),
        ),
      ),
      const PersonalitypatternContainer()
    ]));
  }
}
