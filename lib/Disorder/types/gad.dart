import 'package:flutter/material.dart';
import 'package:gradution_project/Disorder/DisInfo.dart';

class Gad extends StatelessWidget {
  const Gad({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor:Color(0Xff36715A), 
      body: Disinfo(
            tx1: "اضطراب القلق العام",
      tx2: 'Generalized Anxiety Disorder - GAD',
      img: 'assets/gad2.png',
      tx3: "قلق مفرط ومستمر بشأن أمور الحياة اليومية ",
      tx4: "توتر عضلي، صعوبة في النوم \nالتعب، وصعوبة التركيز ",

      ),
    );
     
 
  }
}