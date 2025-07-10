import 'package:flutter/material.dart';

import '../widget/Personality_Type_Screenbody.dart';

class PersonalityTypeScreen extends StatelessWidget {
  const PersonalityTypeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0Xff36715A),
      body: PersonalityTypeScreenbody(),
    );
  }
}
