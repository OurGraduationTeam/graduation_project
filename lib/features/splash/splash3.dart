import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gradution_project/features/splash/splash2.dart';
import 'package:gradution_project/features/splash/splash4.dart';

class Splash3 extends StatefulWidget {
  const Splash3({super.key});

  @override
  State<Splash3> createState() => _Splash1State();
}

class _Splash1State extends State<Splash3> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 2),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return const Splash4();
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: double.infinity,
      child: Center(child: Image.asset('assets/logo.png')),
    );
  }
}
