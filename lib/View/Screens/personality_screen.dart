import 'package:flutter/material.dart';
import 'package:gradution_project/View/widget/constant.dart';

import '../widget/Personality_Type_Screenbody.dart';

class PersonalityTypeScreen extends StatelessWidget {
  const PersonalityTypeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: primaryColor,
      body: PersonalityTypeScreenbody(),
    );
  }
}
