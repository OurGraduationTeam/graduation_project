import 'package:flutter/material.dart';

class Splash4 extends StatelessWidget {
  const Splash4({super.key});

  @override
  Widget build(BuildContext context) {
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
              width: 133,
              height: 133,
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
