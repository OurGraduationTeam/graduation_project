
import 'package:flutter/material.dart';

class InfoPatterns extends StatelessWidget {
  const InfoPatterns(
      {super.key,
      required this.text1,
      required this.text2,
      required this.image,
      required this.text3});
  final String text1;
  final String text2;
  final String image;
  final String text3;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(15),
        color: const Color(0Xff36715A),
        width: double.infinity,
        height: height * 0.24,
        child: Row(
          spacing: 10,
          children: [
            Image.asset(image),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text1,
                    style: const TextStyle(
                        color: Color(0xff5DB996),
                        backgroundColor: Colors.white,
                        fontSize: 30),
                  ),
                  Text(
                    text2,
                    style: const TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  Text(
                    text3,
                    style: const TextStyle(
                      fontSize: 10,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
