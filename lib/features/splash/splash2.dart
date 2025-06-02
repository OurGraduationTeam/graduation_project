import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gradution_project/features/splash/splash3.dart';
import 'package:gradution_project/features/splash/splash4.dart';

class Splash2 extends StatefulWidget {
  const Splash2({super.key});

  @override
  State<Splash2> createState() => _Splash2State();
}

class _Splash2State extends State<Splash2> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 1),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return const Splash3();
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Container(
      color: Colors.white,
      height: height,
      child: Center(child: Image.asset('assets/rotated logo.png')),
    );
  }
}
