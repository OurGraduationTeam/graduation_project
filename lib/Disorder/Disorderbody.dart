import 'package:flutter/material.dart';
import 'package:gradution_project/Disorder/ListviewDisorded%20.dart';


class Disorderbody extends StatelessWidget {
  const Disorderbody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        Container(
          color: const Color(0Xff36715A),
          padding: const EdgeInsets.only(bottom: 20),
          height: 160,
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
            padding: const EdgeInsets.only(top: 20),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
              color: Colors.white,
            ),
            child: const ListviewDisorded(),
          ),
        )
      ],
    ));
  }
}
