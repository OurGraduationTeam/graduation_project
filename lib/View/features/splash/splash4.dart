import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gradution_project/View/Screens/intro_screen.dart';

class Splash4 extends StatefulWidget {
  const Splash4({super.key});

  @override
  State<Splash4> createState() => _Splash4State();
}

class _Splash4State extends State<Splash4> with SingleTickerProviderStateMixin{
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 1),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return  IntroScreen();
          },
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
     var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        color: const Color(0Xff36715A),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.png',
              color: Colors.white,
              width: width * 0.3,
              height: height * 0.14,
            ),
            const SizedBox(width: 10),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('mind',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    )),
                Text('map',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
