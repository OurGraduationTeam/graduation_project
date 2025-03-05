import 'package:flutter/material.dart';
import 'package:gradution_project/character/Item2charcterpattern.dart';
import 'package:gradution_project/character/containerforcharacter.dart';

class Characterpattern extends StatelessWidget {
  const Characterpattern({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(children: [
              const Containerforcharachter(),
              const Padding(
                padding: EdgeInsets.only(top: 8, right: 8),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'سمات الشخصية',
                      style: TextStyle(
                          fontSize: 32,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    )),
              ), const SizedBox(height: 18,),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.black, width: 1)),
                child: const Column(children: [
                  Item2characterpattern(
                    progress: 62,
                    color: Color(0Xff90D0B7),
                  ),
                  Item2characterpattern(progress: 48, color: Color(0XffDACC2D)),

                  Item2characterpattern(progress: 48, color: Color(0XffC8F15A)),
                  Item2characterpattern(progress: 33, color: Color(0XffE3A3E9)),
                  Item2characterpattern(progress: 66, color: Color(0XffE38F8F))
                ]),
              )
            ])));
  }
}
