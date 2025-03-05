import 'package:flutter/material.dart';
import 'PersonalitypatternContainer.dart';

class PersonalityPatternbody extends StatelessWidget {
  const PersonalityPatternbody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(children: [
      Container(
        height: 130,
        padding: const EdgeInsets.symmetric(vertical: 20),
        alignment: Alignment.center,
        child: const Text(
          'انواع الأنماط',
          style: TextStyle(
            fontSize: 26,
            color: Colors.white,
          ),
        ),
      ),
      const PersonalitypatternContainer()
    ]));
  }
}
