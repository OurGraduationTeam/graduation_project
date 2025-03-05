import 'package:flutter/material.dart';
import 'package:gradution_project/Disorder/DisInfo.dart';

class Ptsd extends StatelessWidget {
  const Ptsd({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0Xff36715A),
      body: Disinfo(
        tx1: "اضطراب ما بعد الصدمة",
      tx2:"Post-Traumatic Stress Disorder - PTSD",
      img: 'assets/ptsd2.png',
      tx3: "اضطراب يحدث بعد التعرض لصدمة شديدة\n مثل الحروب، الاعتداءات، أو الكوارث",
      tx4: "ذكريات مزعجة، كوابيس، تجنب المواقف \nالمرتبطة بالصدمة، وفرط اليقظة",
   
      ),
    );
      
  }
}