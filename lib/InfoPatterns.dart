import 'package:flutter/material.dart';

class Infopatterns extends StatelessWidget {
  const Infopatterns(
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
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(15),
        color: Color(0Xff36715A),
        width: double.infinity,
        height: 230,
        child: Row(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    text1,
                    style: TextStyle(
                        color: Color(0xff5DB996),
                        backgroundColor: Colors.white,
                        fontSize: 30),
                  ),
                  Text(
                    text2,
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  Text(
                    text3,
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            Image.asset(image),
          ],
        ),
      ),
    );
  }
}
