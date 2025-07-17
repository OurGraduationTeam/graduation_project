import 'package:flutter/material.dart';
import 'package:gradution_project/View/widget/constant.dart';
import 'package:gradution_project/View/widget/personality_pattern_body.dart';

class PersonalityPattern extends StatelessWidget {
  const PersonalityPattern({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: primaryColor,
      body: PersonalityPatternBody(),
    );
  }
}

