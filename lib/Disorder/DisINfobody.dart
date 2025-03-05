
import 'package:flutter/material.dart';

class DisINfobody extends StatelessWidget {
  const DisINfobody({
    super.key,
    required this.tx1,
    required this.tx2,
    required this.img,
    required this.tx3,
    required this.tx4,
  });

  final String tx1;
  final String tx2;
  final String img;
  final String tx3;
  final String tx4;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          tx1,
          style: const TextStyle(fontSize: 25, color: Colors.black),
          textAlign: TextAlign.center,
        ),
        Text(
          tx2,
          style: const TextStyle(fontSize: 20, color: Color(0xff4A826C)),
          textAlign: TextAlign.center,
        ),
        Image.asset(
          img,
          height: 250,
        ),
        const Text(
          'الوصف',
          style: TextStyle(
              fontSize: 30,
              color: Color(0xff36715A),
              fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        Text(
          tx3,
          style: const TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        const Text(
          'الأعراض',
          style: TextStyle(
              fontSize: 30,
              color: Color(0xff36715A),
              fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        Text(
          tx4,
          style: const TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        MaterialButton(
          onPressed: () {},
          color: const Color(0xff4A826C),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          minWidth: 200,
          child: const Text(
            'اعرف أكثر',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        MaterialButton(
          onPressed: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          minWidth: 200,
          child: const Text(
            'رجوع',
            style: TextStyle(
                color: Color(0xff4A826C),
                fontSize: 15,
                fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
