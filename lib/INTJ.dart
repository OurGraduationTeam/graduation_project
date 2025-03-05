import 'package:flutter/material.dart';
import 'package:gradution_project/InfoPatterns.dart';
import 'package:gradution_project/TabPatterns.dart';

class Intj extends StatelessWidget {
  const Intj({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Infopatterns(
              text1: 'INTJ',
              text2: 'مهندس',
              text3:
                  '''يقبع المهندس المعمماري وحيدًا في القمة، وكونه واحدًا من أندر أنواع الشخصيات وأكثرهم قدرة استراتيجيًا،، فالمهندسون المعماريون يعرفون ذلك جيدًا. يمثل المهندسون المعماريون اثنين في المئة فقط من السكان، والنساء اللاتي يتمتعن بهذا النوع من الشخصية نادرات بصورة خاصة، حيث يشكلن 0.8٪ فقط من السكان – وغالبًا ما يكون تحديا بالنسبة لهم العثور على أناس مماثلين لهم في التفكير قادرين على مواكبتهم في نزعتهم العقلانية الدؤوبة ومناوراتهم المماثلة لما يحدث في لُعبة الشطرنج.''',
              image: 'assets/intj2.png',
            ),
            Tabpatterns()
          ],
        ));
  }
}
