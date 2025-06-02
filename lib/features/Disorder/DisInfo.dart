import 'package:flutter/material.dart';
import 'package:gradution_project/features/Disorder/DisINfobody.dart';


class Disinfo extends StatelessWidget {
  const Disinfo(
      {super.key,
      required this.tx1,
      required this.tx2,
      required this.tx3,
      required this.tx4,
      required this.img});
  final String tx1;
  final String tx2;
  final String tx3;
  final String tx4;
  final String img;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Column(
      children: [
        Container(
          color: const Color(0Xff36715A),
          padding: const EdgeInsets.only(bottom: 20),
          height: height * 0.26,
          alignment: Alignment.center,
          child: const Text(
            "أنواع الاضطرابات",
            style: TextStyle(
              fontSize: 26,
              color: Colors.white,
            ),
          ),
        ),
        Expanded(
          child: Container(
            width: width,
            padding: const EdgeInsets.only(top: 20),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
              color: Colors.white,
            ),
            child: DisINfobody(tx1: tx1, tx2: tx2, img: img, tx3: tx3, tx4: tx4),
          ),
        )
      ],
    ));
  }
}
