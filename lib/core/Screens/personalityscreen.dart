import 'package:flutter/material.dart';

import '../../widget/PersonalityTypeScreenbody.dart';

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
