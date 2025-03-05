import 'package:flutter/material.dart';
import 'package:gradution_project/widget/buildcontainer.dart';
import 'package:gradution_project/loginitems.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Loginitems(),
    );
  }
}
